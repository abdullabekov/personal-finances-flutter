import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/accounts/account.dart';
import '../../domain/accounts/value_objects.dart';
import '../../domain/core/value_objects.dart';

part 'account_dtos.freezed.dart';
part 'account_dtos.g.dart';

@freezed
abstract class AccountDto implements _$AccountDto {
  const AccountDto._();

  const factory AccountDto({
    @JsonKey(ignore: true) String id,
    @required String name,
  }) = _AccountDto;

  factory AccountDto.fromDomain(Account account) {
    return AccountDto(
      id: account.id.getOrCrash(),
      name: account.name.getOrCrash(),
    );
  }

  Account toDomain() {
    return Account(
      id: UniqueId.fromUniqueString(id),
      name: AccountName(name),
    );
  }

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);

  factory AccountDto.fromFirestore(DocumentSnapshot doc) {
    return AccountDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}
