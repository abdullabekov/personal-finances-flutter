part of 'account_watcher_bloc.dart';

@freezed
abstract class AccountWatcherEvent with _$AccountWatcherEvent {
  const factory AccountWatcherEvent.watchAllStarted() = _WatchAllStarted;  
  // Для примера. Реализации разных запросов на данные.
  const factory AccountWatcherEvent.watchFilteredStarted() = _WatchFilteredStarted;
  //
  const factory AccountWatcherEvent.accountsReceived(
          Either<AccountFailure, KtList<Account>> failureOrAccounts) =
      _AccountsReceived;
}
