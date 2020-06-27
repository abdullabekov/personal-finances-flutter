// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccountTearOff {
  const _$AccountTearOff();

  _Account call({@required UniqueId id, @required AccountName name}) {
    return _Account(
      id: id,
      name: name,
    );
  }
}

// ignore: unused_element
const $Account = _$AccountTearOff();

mixin _$Account {
  UniqueId get id;
  AccountName get name;

  $AccountCopyWith<Account> get copyWith;
}

abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call({UniqueId id, AccountName name});
}

class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as AccountName,
    ));
  }
}

abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, AccountName name});
}

class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_Account(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as AccountName,
    ));
  }
}

class _$_Account extends _Account {
  const _$_Account({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null),
        super._();

  @override
  final UniqueId id;
  @override
  final AccountName name;

  @override
  String toString() {
    return 'Account(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Account &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);
}

abstract class _Account extends Account {
  const _Account._() : super._();
  const factory _Account({@required UniqueId id, @required AccountName name}) =
      _$_Account;

  @override
  UniqueId get id;
  @override
  AccountName get name;
  @override
  _$AccountCopyWith<_Account> get copyWith;
}
