import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'account.freezed.dart';

@freezed
abstract class Account implements _$Account {
  const Account._();

  const factory Account({
    @required UniqueId id,
    @required AccountName name,
  }) = _Account;

  factory Account.empty() => Account(
        id: UniqueId(),
        name: AccountName(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
