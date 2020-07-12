import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/accounts/account.dart';
import '../../domain/accounts/account_failure.dart';
import '../../domain/accounts/i_account_repository.dart';
import '../../infrastructure/core/firestore_helpers.dart';
import 'account_dtos.dart';

@LazySingleton(as: IAccountRepository)
class AccountRepository implements IAccountRepository {
  final Firestore _firestore;

  AccountRepository(this._firestore);

  @override
  Stream<Either<AccountFailure, KtList<Account>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.accountCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<AccountFailure, KtList<Account>>(
            snapshot.documents
                .map((doc) => AccountDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const AccountFailure.insufficientPermission());
      } else {
        return left(const AccountFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<AccountFailure, Unit>> create(Account account) async {
    try {
      final userDoc = await _firestore.userDocument();
      final accountDto = AccountDto.fromDomain(account);

      await userDoc.accountCollection
          .document(accountDto.id)
          .setData(accountDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AccountFailure.insufficientPermission());
      } else {
        return left(const AccountFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<AccountFailure, Unit>> delete(Account account) async {
    try {
      final userDoc = await _firestore.userDocument();
      final accountDto = AccountDto.fromDomain(account);

      await userDoc.accountCollection
          .document(accountDto.id)
          .updateData(accountDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AccountFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const AccountFailure.unableToUpdate());
      } else {
        return left(const AccountFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<AccountFailure, Unit>> update(Account account) async {
    try {
      final userDoc = await _firestore.userDocument();
      final accountId = account.id.getOrCrash();

      await userDoc.accountCollection.document(accountId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AccountFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const AccountFailure.unableToUpdate());
      } else {
        return left(const AccountFailure.unexpected());
      }
    }
  }
}
