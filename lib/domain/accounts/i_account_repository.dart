import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'account.dart';
import 'account_failure.dart';

abstract class INoteRepository {
  Stream<Either<AccountFailure, KtList<Account>>> watchAll();
  Future<Either<AccountFailure, Unit>> create(Account account);
  Future<Either<AccountFailure, Unit>> update(Account account);
  Future<Either<AccountFailure, Unit>> delete(Account account);
}