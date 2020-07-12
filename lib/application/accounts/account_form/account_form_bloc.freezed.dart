// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountFormEventTearOff {
  const _$AccountFormEventTearOff();

  _Initialized initialized(Option<Account> initialAccountOption) {
    return _Initialized(
      initialAccountOption,
    );
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $AccountFormEvent = _$AccountFormEventTearOff();

mixin _$AccountFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Account> initialAccountOption),
    @required Result nameChanged(String name),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Account> initialAccountOption),
    Result nameChanged(String name),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $AccountFormEventCopyWith<$Res> {
  factory $AccountFormEventCopyWith(
          AccountFormEvent value, $Res Function(AccountFormEvent) then) =
      _$AccountFormEventCopyWithImpl<$Res>;
}

class _$AccountFormEventCopyWithImpl<$Res>
    implements $AccountFormEventCopyWith<$Res> {
  _$AccountFormEventCopyWithImpl(this._value, this._then);

  final AccountFormEvent _value;
  // ignore: unused_field
  final $Res Function(AccountFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Account> initialAccountOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialAccountOption = freezed,
  }) {
    return _then(_Initialized(
      initialAccountOption == freezed
          ? _value.initialAccountOption
          : initialAccountOption as Option<Account>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialAccountOption)
      : assert(initialAccountOption != null);

  @override
  final Option<Account> initialAccountOption;

  @override
  String toString() {
    return 'AccountFormEvent.initialized(initialAccountOption: $initialAccountOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialAccountOption, initialAccountOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialAccountOption, initialAccountOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialAccountOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Account> initialAccountOption),
    @required Result nameChanged(String name),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return initialized(initialAccountOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Account> initialAccountOption),
    Result nameChanged(String name),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialAccountOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AccountFormEvent {
  const factory _Initialized(Option<Account> initialAccountOption) =
      _$_Initialized;

  Option<Account> get initialAccountOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$NameChangedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'AccountFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Account> initialAccountOption),
    @required Result nameChanged(String name),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Account> initialAccountOption),
    Result nameChanged(String name),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements AccountFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$AccountFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'AccountFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Account> initialAccountOption),
    @required Result nameChanged(String name),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Account> initialAccountOption),
    Result nameChanged(String name),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AccountFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$AccountFormStateTearOff {
  const _$AccountFormStateTearOff();

  _AccountFormState call(
      {@required
          Account account,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<AccountFailure, Unit>> saveFailureOrSuccessOption}) {
    return _AccountFormState(
      account: account,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $AccountFormState = _$AccountFormStateTearOff();

mixin _$AccountFormState {
  Account get account;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<AccountFailure, Unit>> get saveFailureOrSuccessOption;

  $AccountFormStateCopyWith<AccountFormState> get copyWith;
}

abstract class $AccountFormStateCopyWith<$Res> {
  factory $AccountFormStateCopyWith(
          AccountFormState value, $Res Function(AccountFormState) then) =
      _$AccountFormStateCopyWithImpl<$Res>;
  $Res call(
      {Account account,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AccountFailure, Unit>> saveFailureOrSuccessOption});

  $AccountCopyWith<$Res> get account;
}

class _$AccountFormStateCopyWithImpl<$Res>
    implements $AccountFormStateCopyWith<$Res> {
  _$AccountFormStateCopyWithImpl(this._value, this._then);

  final AccountFormState _value;
  // ignore: unused_field
  final $Res Function(AccountFormState) _then;

  @override
  $Res call({
    Object account = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed ? _value.account : account as Account,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<AccountFailure, Unit>>,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

abstract class _$AccountFormStateCopyWith<$Res>
    implements $AccountFormStateCopyWith<$Res> {
  factory _$AccountFormStateCopyWith(
          _AccountFormState value, $Res Function(_AccountFormState) then) =
      __$AccountFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Account account,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AccountFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $AccountCopyWith<$Res> get account;
}

class __$AccountFormStateCopyWithImpl<$Res>
    extends _$AccountFormStateCopyWithImpl<$Res>
    implements _$AccountFormStateCopyWith<$Res> {
  __$AccountFormStateCopyWithImpl(
      _AccountFormState _value, $Res Function(_AccountFormState) _then)
      : super(_value, (v) => _then(v as _AccountFormState));

  @override
  _AccountFormState get _value => super._value as _AccountFormState;

  @override
  $Res call({
    Object account = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_AccountFormState(
      account: account == freezed ? _value.account : account as Account,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<AccountFailure, Unit>>,
    ));
  }
}

class _$_AccountFormState implements _AccountFormState {
  const _$_AccountFormState(
      {@required this.account,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(account != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Account account;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<AccountFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'AccountFormState(account: $account, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountFormState &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$AccountFormStateCopyWith<_AccountFormState> get copyWith =>
      __$AccountFormStateCopyWithImpl<_AccountFormState>(this, _$identity);
}

abstract class _AccountFormState implements AccountFormState {
  const factory _AccountFormState(
      {@required
          Account account,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<AccountFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_AccountFormState;

  @override
  Account get account;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<AccountFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$AccountFormStateCopyWith<_AccountFormState> get copyWith;
}
