// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

  _Account call(
      {int? id,
      required String title,
      required String currencyType,
      required int initialAmount}) {
    return _Account(
      id: id,
      title: title,
      currencyType: currencyType,
      initialAmount: initialAmount,
    );
  }
}

/// @nodoc
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  int? get id =>
      throw _privateConstructorUsedError; // NOTE: 為了讓sqflite系統可以自動產生unique key
  String get title => throw _privateConstructorUsedError; // 標題（台幣帳戶 之類的）
  String get currencyType => throw _privateConstructorUsedError; // 幣別
  int get initialAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call({int? id, String title, String currencyType, int initialAmount});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

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
abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String title, String currencyType, int initialAmount});
}

/// @nodoc
class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? currencyType = freezed,
    Object? initialAmount = freezed,
  }) {
    return _then(_Account(
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

class _$_Account extends _Account {
  const _$_Account(
      {this.id,
      required this.title,
      required this.currencyType,
      required this.initialAmount})
      : super._();

  @override
  final int? id;
  @override // NOTE: 為了讓sqflite系統可以自動產生unique key
  final String title;
  @override // 標題（台幣帳戶 之類的）
  final String currencyType;
  @override // 幣別
  final int initialAmount;

  @override
  String toString() {
    return 'Account(id: $id, title: $title, currencyType: $currencyType, initialAmount: $initialAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Account &&
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
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);
}

abstract class _Account extends Account {
  const factory _Account(
      {int? id,
      required String title,
      required String currencyType,
      required int initialAmount}) = _$_Account;
  const _Account._() : super._();

  @override
  int? get id;
  @override // NOTE: 為了讓sqflite系統可以自動產生unique key
  String get title;
  @override // 標題（台幣帳戶 之類的）
  String get currencyType;
  @override // 幣別
  int get initialAmount;
  @override
  @JsonKey(ignore: true)
  _$AccountCopyWith<_Account> get copyWith =>
      throw _privateConstructorUsedError;
}
