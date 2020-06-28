part of 'account_watcher_bloc.dart';

@freezed
abstract class AccountWatcherState with _$AccountWatcherState{
  const factory AccountWatcherState.initial() = _Initial;
  const factory AccountWatcherState.loadInProgress() = _LoadInProgress;
  const factory AccountWatcherState.loadSuccess(KtList<Account> accounts) = _LoadSuccess;
  const factory AccountWatcherState.loadFailure(AccountFailure accountFailure) = _LoadFailure;
}