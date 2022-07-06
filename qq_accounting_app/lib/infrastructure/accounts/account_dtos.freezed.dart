// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) {
  return _AccountDto.fromJson(json);
}

/// @nodoc
class _$AccountDtoTearOff {
  const _$AccountDtoTearOff();

  _AccountDto call(
      {int? id,
      required String title,
      required String currencyType,
      required int initialAmount}) {
    return _AccountDto(
      id: id,
      title: title,
      currencyType: currencyType,
      initialAmount: initialAmount,
    );
  }

  AccountDto fromJson(Map<String, Object?> json) {
    return AccountDto.fromJson(json);
  }
}

/// @nodoc
const $AccountDto = _$AccountDtoTearOff();

/// @nodoc
mixin _$AccountDto {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError; // 標題（台幣帳戶 之類的）
  String get currencyType => throw _privateConstructorUsedError; // 幣別
  int get initialAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDtoCopyWith<AccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDtoCopyWith<$Res> {
  factory $AccountDtoCopyWith(
          AccountDto value, $Res Function(AccountDto) then) =
      _$AccountDtoCopyWithImpl<$Res>;
  $Res call({int? id, String title, String currencyType, int initialAmount});
}

/// @nodoc
class _$AccountDtoCopyWithImpl<$Res> implements $AccountDtoCopyWith<$Res> {
  _$AccountDtoCopyWithImpl(this._value, this._then);

  final AccountDto _value;
  // ignore: unused_field
  final $Res Function(AccountDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? currencyType = freezed,
    Object? initialAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: currencyType == freezed
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      initialAmount: initialAmount == freezed
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AccountDtoCopyWith<$Res> implements $AccountDtoCopyWith<$Res> {
  factory _$AccountDtoCopyWith(
          _AccountDto value, $Res Function(_AccountDto) then) =
      __$AccountDtoCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String title, String currencyType, int initialAmount});
}

/// @nodoc
class __$AccountDtoCopyWithImpl<$Res> extends _$AccountDtoCopyWithImpl<$Res>
    implements _$AccountDtoCopyWith<$Res> {
  __$AccountDtoCopyWithImpl(
      _AccountDto _value, $Res Function(_AccountDto) _then)
      : super(_value, (v) => _then(v as _AccountDto));

  @override
  _AccountDto get _value => super._value as _AccountDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? currencyType = freezed,
    Object? initialAmount = freezed,
  }) {
    return _then(_AccountDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: currencyType == freezed
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      initialAmount: initialAmount == freezed
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountDto extends _AccountDto {
  const _$_AccountDto(
      {this.id,
      required this.title,
      required this.currencyType,
      required this.initialAmount})
      : super._();

  factory _$_AccountDto.fromJson(Map<String, dynamic> json) =>
      _$$_AccountDtoFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override // 標題（台幣帳戶 之類的）
  final String currencyType;
  @override // 幣別
  final int initialAmount;

  @override
  String toString() {
    return 'AccountDto(id: $id, title: $title, currencyType: $currencyType, initialAmount: $initialAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.currencyType, currencyType) &&
            const DeepCollectionEquality()
                .equals(other.initialAmount, initialAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(currencyType),
      const DeepCollectionEquality().hash(initialAmount));

  @JsonKey(ignore: true)
  @override
  _$AccountDtoCopyWith<_AccountDto> get copyWith =>
      __$AccountDtoCopyWithImpl<_AccountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountDtoToJson(this);
  }
}

abstract class _AccountDto extends AccountDto {
  const factory _AccountDto(
      {int? id,
      required String title,
      required String currencyType,
      required int initialAmount}) = _$_AccountDto;
  const _AccountDto._() : super._();

  factory _AccountDto.fromJson(Map<String, dynamic> json) =
      _$_AccountDto.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override // 標題（台幣帳戶 之類的）
  String get currencyType;
  @override // 幣別
  int get initialAmount;
  @override
  @JsonKey(ignore: true)
  _$AccountDtoCopyWith<_AccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
