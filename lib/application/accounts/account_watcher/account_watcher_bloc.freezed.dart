// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountWatcherEventTearOff {
  const _$AccountWatcherEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _WatchFilteredStarted watchFilteredStarted() {
    return const _WatchFilteredStarted();
  }

  _AccountsReceived accountsReceived(
      Either<AccountFailure, KtList<Account>> failureOrAccounts) {
    return _AccountsReceived(
      failureOrAccounts,
    );
  }
}

// ignore: unused_element
const $AccountWatcherEvent = _$AccountWatcherEventTearOff();

mixin _$AccountWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchFilteredStarted(),
    @required
        Result accountsReceived(
            Either<AccountFailure, KtList<Account>> failureOrAccounts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchFilteredStarted(),
    Result accountsReceived(
        Either<AccountFailure, KtList<Account>> failureOrAccounts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchFilteredStarted(_WatchFilteredStarted value),
    @required Result accountsReceived(_AccountsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchFilteredStarted(_WatchFilteredStarted value),
    Result accountsReceived(_AccountsReceived value),
    @required Result orElse(),
  });
}

abstract class $AccountWatcherEventCopyWith<$Res> {
  factory $AccountWatcherEventCopyWith(
          AccountWatcherEvent value, $Res Function(AccountWatcherEvent) then) =
      _$AccountWatcherEventCopyWithImpl<$Res>;
}

class _$AccountWatcherEventCopyWithImpl<$Res>
    implements $AccountWatcherEventCopyWith<$Res> {
  _$AccountWatcherEventCopyWithImpl(this._value, this._then);

  final AccountWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(AccountWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$AccountWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'AccountWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchFilteredStarted(),
    @required
        Result accountsReceived(
            Either<AccountFailure, KtList<Account>> failureOrAccounts),
  }) {
    assert(watchAllStarted != null);
    assert(watchFilteredStarted != null);
    assert(accountsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchFilteredStarted(),
    Result accountsReceived(
        Either<AccountFailure, KtList<Account>> failureOrAccounts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchFilteredStarted(_WatchFilteredStarted value),
    @required Result accountsReceived(_AccountsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchFilteredStarted != null);
    assert(accountsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchFilteredStarted(_WatchFilteredStarted value),
    Result accountsReceived(_AccountsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements AccountWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$WatchFilteredStartedCopyWith<$Res> {
  factory _$WatchFilteredStartedCopyWith(_WatchFilteredStarted value,
          $Res Function(_WatchFilteredStarted) then) =
      __$WatchFilteredStartedCopyWithImpl<$Res>;
}

class __$WatchFilteredStartedCopyWithImpl<$Res>
    extends _$AccountWatcherEventCopyWithImpl<$Res>
    implements _$WatchFilteredStartedCopyWith<$Res> {
  __$WatchFilteredStartedCopyWithImpl(
      _WatchFilteredStarted _value, $Res Function(_WatchFilteredStarted) _then)
      : super(_value, (v) => _then(v as _WatchFilteredStarted));

  @override
  _WatchFilteredStarted get _value => super._value as _WatchFilteredStarted;
}

class _$_WatchFilteredStarted implements _WatchFilteredStarted {
  const _$_WatchFilteredStarted();

  @override
  String toString() {
    return 'AccountWatcherEvent.watchFilteredStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchFilteredStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchFilteredStarted(),
    @required
        Result accountsReceived(
            Either<AccountFailure, KtList<Account>> failureOrAccounts),
  }) {
    assert(watchAllStarted != null);
    assert(watchFilteredStarted != null);
    assert(accountsReceived != null);
    return watchFilteredStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchFilteredStarted(),
    Result accountsReceived(
        Either<AccountFailure, KtList<Account>> failureOrAccounts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFilteredStarted != null) {
      return watchFilteredStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchFilteredStarted(_WatchFilteredStarted value),
    @required Result accountsReceived(_AccountsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchFilteredStarted != null);
    assert(accountsReceived != null);
    return watchFilteredStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchFilteredStarted(_WatchFilteredStarted value),
    Result accountsReceived(_AccountsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFilteredStarted != null) {
      return watchFilteredStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFilteredStarted implements AccountWatcherEvent {
  const factory _WatchFilteredStarted() = _$_WatchFilteredStarted;
}

abstract class _$AccountsReceivedCopyWith<$Res> {
  factory _$AccountsReceivedCopyWith(
          _AccountsReceived value, $Res Function(_AccountsReceived) then) =
      __$AccountsReceivedCopyWithImpl<$Res>;
  $Res call({Either<AccountFailure, KtList<Account>> failureOrAccounts});
}

class __$AccountsReceivedCopyWithImpl<$Res>
    extends _$AccountWatcherEventCopyWithImpl<$Res>
    implements _$AccountsReceivedCopyWith<$Res> {
  __$AccountsReceivedCopyWithImpl(
      _AccountsReceived _value, $Res Function(_AccountsReceived) _then)
      : super(_value, (v) => _then(v as _AccountsReceived));

  @override
  _AccountsReceived get _value => super._value as _AccountsReceived;

  @override
  $Res call({
    Object failureOrAccounts = freezed,
  }) {
    return _then(_AccountsReceived(
      failureOrAccounts == freezed
          ? _value.failureOrAccounts
          : failureOrAccounts as Either<AccountFailure, KtList<Account>>,
    ));
  }
}

class _$_AccountsReceived implements _AccountsReceived {
  const _$_AccountsReceived(this.failureOrAccounts)
      : assert(failureOrAccounts != null);

  @override
  final Either<AccountFailure, KtList<Account>> failureOrAccounts;

  @override
  String toString() {
    return 'AccountWatcherEvent.accountsReceived(failureOrAccounts: $failureOrAccounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountsReceived &&
            (identical(other.failureOrAccounts, failureOrAccounts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrAccounts, failureOrAccounts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrAccounts);

  @override
  _$AccountsReceivedCopyWith<_AccountsReceived> get copyWith =>
      __$AccountsReceivedCopyWithImpl<_AccountsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchFilteredStarted(),
    @required
        Result accountsReceived(
            Either<AccountFailure, KtList<Account>> failureOrAccounts),
  }) {
    assert(watchAllStarted != null);
    assert(watchFilteredStarted != null);
    assert(accountsReceived != null);
    return accountsReceived(failureOrAccounts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchFilteredStarted(),
    Result accountsReceived(
        Either<AccountFailure, KtList<Account>> failureOrAccounts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountsReceived != null) {
      return accountsReceived(failureOrAccounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchFilteredStarted(_WatchFilteredStarted value),
    @required Result accountsReceived(_AccountsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchFilteredStarted != null);
    assert(accountsReceived != null);
    return accountsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchFilteredStarted(_WatchFilteredStarted value),
    Result accountsReceived(_AccountsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountsReceived != null) {
      return accountsReceived(this);
    }
    return orElse();
  }
}

abstract class _AccountsReceived implements AccountWatcherEvent {
  const factory _AccountsReceived(
          Either<AccountFailure, KtList<Account>> failureOrAccounts) =
      _$_AccountsReceived;

  Either<AccountFailure, KtList<Account>> get failureOrAccounts;
  _$AccountsReceivedCopyWith<_AccountsReceived> get copyWith;
}

class _$AccountWatcherStateTearOff {
  const _$AccountWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Account> accounts) {
    return _LoadSuccess(
      accounts,
    );
  }

  _LoadFailure loadFailure(AccountFailure accountFailure) {
    return _LoadFailure(
      accountFailure,
    );
  }
}

// ignore: unused_element
const $AccountWatcherState = _$AccountWatcherStateTearOff();

mixin _$AccountWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Account> accounts),
    @required Result loadFailure(AccountFailure accountFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Account> accounts),
    Result loadFailure(AccountFailure accountFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $AccountWatcherStateCopyWith<$Res> {
  factory $AccountWatcherStateCopyWith(
          AccountWatcherState value, $Res Function(AccountWatcherState) then) =
      _$AccountWatcherStateCopyWithImpl<$Res>;
}

class _$AccountWatcherStateCopyWithImpl<$Res>
    implements $AccountWatcherStateCopyWith<$Res> {
  _$AccountWatcherStateCopyWithImpl(this._value, this._then);

  final AccountWatcherState _value;
  // ignore: unused_field
  final $Res Function(AccountWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$AccountWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AccountWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Account> accounts),
    @required Result loadFailure(AccountFailure accountFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Account> accounts),
    Result loadFailure(AccountFailure accountFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AccountWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$AccountWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'AccountWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Account> accounts),
    @required Result loadFailure(AccountFailure accountFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Account> accounts),
    Result loadFailure(AccountFailure accountFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements AccountWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Account> accounts});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$AccountWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object accounts = freezed,
  }) {
    return _then(_LoadSuccess(
      accounts == freezed ? _value.accounts : accounts as KtList<Account>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.accounts) : assert(accounts != null);

  @override
  final KtList<Account> accounts;

  @override
  String toString() {
    return 'AccountWatcherState.loadSuccess(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accounts);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Account> accounts),
    @required Result loadFailure(AccountFailure accountFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(accounts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Account> accounts),
    Result loadFailure(AccountFailure accountFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements AccountWatcherState {
  const factory _LoadSuccess(KtList<Account> accounts) = _$_LoadSuccess;

  KtList<Account> get accounts;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({AccountFailure accountFailure});

  $AccountFailureCopyWith<$Res> get accountFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$AccountWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object accountFailure = freezed,
  }) {
    return _then(_LoadFailure(
      accountFailure == freezed
          ? _value.accountFailure
          : accountFailure as AccountFailure,
    ));
  }

  @override
  $AccountFailureCopyWith<$Res> get accountFailure {
    if (_value.accountFailure == null) {
      return null;
    }
    return $AccountFailureCopyWith<$Res>(_value.accountFailure, (value) {
      return _then(_value.copyWith(accountFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.accountFailure) : assert(accountFailure != null);

  @override
  final AccountFailure accountFailure;

  @override
  String toString() {
    return 'AccountWatcherState.loadFailure(accountFailure: $accountFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.accountFailure, accountFailure) ||
                const DeepCollectionEquality()
                    .equals(other.accountFailure, accountFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accountFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Account> accounts),
    @required Result loadFailure(AccountFailure accountFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(accountFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Account> accounts),
    Result loadFailure(AccountFailure accountFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(accountFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements AccountWatcherState {
  const factory _LoadFailure(AccountFailure accountFailure) = _$_LoadFailure;

  AccountFailure get accountFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
