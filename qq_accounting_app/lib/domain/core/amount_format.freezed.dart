// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'amount_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AmountFormatTearOff {
  const _$AmountFormatTearOff();

  _AmountFormat call(int value) {
    return _AmountFormat(
      value,
    );
  }
}

/// @nodoc
const $AmountFormat = _$AmountFormatTearOff();

/// @nodoc
mixin _$AmountFormat {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AmountFormatCopyWith<AmountFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountFormatCopyWith<$Res> {
  factory $AmountFormatCopyWith(
          AmountFormat value, $Res Function(AmountFormat) then) =
      _$AmountFormatCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$AmountFormatCopyWithImpl<$Res> implements $AmountFormatCopyWith<$Res> {
  _$AmountFormatCopyWithImpl(this._value, this._then);

  final AmountFormat _value;
  // ignore: unused_field
  final $Res Function(AmountFormat) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AmountFormatCopyWith<$Res>
    implements $AmountFormatCopyWith<$Res> {
  factory _$AmountFormatCopyWith(
          _AmountFormat value, $Res Function(_AmountFormat) then) =
      __$AmountFormatCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$AmountFormatCopyWithImpl<$Res> extends _$AmountFormatCopyWithImpl<$Res>
    implements _$AmountFormatCopyWith<$Res> {
  __$AmountFormatCopyWithImpl(
      _AmountFormat _value, $Res Function(_AmountFormat) _then)
      : super(_value, (v) => _then(v as _AmountFormat));

  @override
  _AmountFormat get _value => super._value as _AmountFormat;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_AmountFormat(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AmountFormat extends _AmountFormat {
  const _$_AmountFormat(this.value) : super._();

  @override
  final int value;

  @override
  String toString() {
    return 'AmountFormat(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AmountFormat &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$AmountFormatCopyWith<_AmountFormat> get copyWith =>
      __$AmountFormatCopyWithImpl<_AmountFormat>(this, _$identity);
}

abstract class _AmountFormat extends AmountFormat {
  const factory _AmountFormat(int value) = _$_AmountFormat;
  const _AmountFormat._() : super._();

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$AmountFormatCopyWith<_AmountFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
