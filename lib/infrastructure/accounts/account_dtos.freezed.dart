// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'account_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) {
  return _AccountDto.fromJson(json);
}

class _$AccountDtoTearOff {
  const _$AccountDtoTearOff();

  _AccountDto call({@JsonKey(ignore: true) String id, @required String name}) {
    return _AccountDto(
      id: id,
      name: name,
    );
  }
}

// ignore: unused_element
const $AccountDto = _$AccountDtoTearOff();

mixin _$AccountDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;

  Map<String, dynamic> toJson();
  $AccountDtoCopyWith<AccountDto> get copyWith;
}

abstract class $AccountDtoCopyWith<$Res> {
  factory $AccountDtoCopyWith(
          AccountDto value, $Res Function(AccountDto) then) =
      _$AccountDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, String name});
}

class _$AccountDtoCopyWithImpl<$Res> implements $AccountDtoCopyWith<$Res> {
  _$AccountDtoCopyWithImpl(this._value, this._then);

  final AccountDto _value;
  // ignore: unused_field
  final $Res Function(AccountDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$AccountDtoCopyWith<$Res> implements $AccountDtoCopyWith<$Res> {
  factory _$AccountDtoCopyWith(
          _AccountDto value, $Res Function(_AccountDto) then) =
      __$AccountDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, String name});
}

class __$AccountDtoCopyWithImpl<$Res> extends _$AccountDtoCopyWithImpl<$Res>
    implements _$AccountDtoCopyWith<$Res> {
  __$AccountDtoCopyWithImpl(
      _AccountDto _value, $Res Function(_AccountDto) _then)
      : super(_value, (v) => _then(v as _AccountDto));

  @override
  _AccountDto get _value => super._value as _AccountDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_AccountDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_AccountDto extends _AccountDto {
  const _$_AccountDto({@JsonKey(ignore: true) this.id, @required this.name})
      : assert(name != null),
        super._();

  factory _$_AccountDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'AccountDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountDto &&
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
  _$AccountDtoCopyWith<_AccountDto> get copyWith =>
      __$AccountDtoCopyWithImpl<_AccountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountDtoToJson(this);
  }
}

abstract class _AccountDto extends AccountDto {
  const _AccountDto._() : super._();
  const factory _AccountDto(
      {@JsonKey(ignore: true) String id,
      @required String name}) = _$_AccountDto;

  factory _AccountDto.fromJson(Map<String, dynamic> json) =
      _$_AccountDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  _$AccountDtoCopyWith<_AccountDto> get copyWith;
}
