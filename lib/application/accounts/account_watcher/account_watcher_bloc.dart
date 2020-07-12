import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:personal_finances/domain/accounts/account.dart';
import 'package:personal_finances/domain/accounts/account_failure.dart';
import 'package:personal_finances/domain/accounts/i_account_repository.dart';

part 'account_watcher_bloc.freezed.dart';
part 'account_watcher_event.dart';
part 'account_watcher_state.dart';

@injectable
class AccountWatcherBloc
    extends Bloc<AccountWatcherEvent, AccountWatcherState> {
  final IAccountRepository _accountRepository;

  AccountWatcherBloc(this._accountRepository);

  StreamSubscription<Either<AccountFailure, KtList<Account>>>
      _accountStreamSubscription;

  @override
  AccountWatcherState get initialState => const AccountWatcherState.initial();

  @override
  Stream<AccountWatcherState> mapEventToState(
    AccountWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const AccountWatcherState.loadInProgress();
        await _accountStreamSubscription?.cancel();
        _accountStreamSubscription = _accountRepository.watchAll().listen(
            (failureOrAccounts) =>
                add(AccountWatcherEvent.accountsReceived(failureOrAccounts)));
      },
      accountsReceived: (e) async* {
        yield e.failureOrAccounts.fold(
            (f) => AccountWatcherState.loadFailure(f),
            (accounts) => AccountWatcherState.loadSuccess(accounts));
      },
      watchFilteredStarted: (e) async* {
        yield const AccountWatcherState.loadInProgress();
        await _accountStreamSubscription?.cancel();
        yield const AccountWatcherState.loadInProgress();
        _accountStreamSubscription = _accountRepository.watchAll().listen(
            (failureOrAccounts) =>
                add(AccountWatcherEvent.accountsReceived(failureOrAccounts)));
      },
    );
  }

  @override
  Future<void> close() async {
    await _accountStreamSubscription.cancel();
    return super.close();
  }
}
