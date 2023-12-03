// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChartItemTearOff {
  const _$ChartItemTearOff();

  _ChartItem call(
      {required String category,
      required int amount,
      required num percentage}) {
    return _ChartItem(
      category: category,
      amount: amount,
      percentage: percentage,
    );
  }
}

/// @nodoc
const $ChartItem = _$ChartItemTearOff();

/// @nodoc
mixin _$ChartItem {
  String get category => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError; // 金額
  num get percentage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartItemCopyWith<ChartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartItemCopyWith<$Res> {
  factory $ChartItemCopyWith(ChartItem value, $Res Function(ChartItem) then) =
      _$ChartItemCopyWithImpl<$Res>;
  $Res call({String category, int amount, num percentage});
}

/// @nodoc
class _$ChartItemCopyWithImpl<$Res> implements $ChartItemCopyWith<$Res> {
  _$ChartItemCopyWithImpl(this._value, this._then);

  final ChartItem _value;
  // ignore: unused_field
  final $Res Function(ChartItem) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? amount = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$ChartItemCopyWith<$Res> implements $ChartItemCopyWith<$Res> {
  factory _$ChartItemCopyWith(
          _ChartItem value, $Res Function(_ChartItem) then) =
      __$ChartItemCopyWithImpl<$Res>;
  @override
  $Res call({String category, int amount, num percentage});
}

/// @nodoc
class __$ChartItemCopyWithImpl<$Res> extends _$ChartItemCopyWithImpl<$Res>
    implements _$ChartItemCopyWith<$Res> {
  __$ChartItemCopyWithImpl(_ChartItem _value, $Res Function(_ChartItem) _then)
      : super(_value, (v) => _then(v as _ChartItem));

  @override
  _ChartItem get _value => super._value as _ChartItem;

  @override
  $Res call({
    Object? category = freezed,
    Object? amount = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_ChartItem(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_ChartItem extends _ChartItem {
  const _$_ChartItem(
      {required this.category, required this.amount, required this.percentage})
      : super._();

  @override
  final String category;
  @override
  final int amount;
  @override // 金額
  final num percentage;

  @override
  String toString() {
    return 'ChartItem(category: $category, amount: $amount, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChartItem &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.percentage, percentage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(percentage));

  @JsonKey(ignore: true)
  @override
  _$ChartItemCopyWith<_ChartItem> get copyWith =>
      __$ChartItemCopyWithImpl<_ChartItem>(this, _$identity);
}

abstract class _ChartItem extends ChartItem {
  const factory _ChartItem(
      {required String category,
      required int amount,
      required num percentage}) = _$_ChartItem;
  const _ChartItem._() : super._();

  @override
  String get category;
  @override
  int get amount;
  @override // 金額
  num get percentage;
  @override
  @JsonKey(ignore: true)
  _$ChartItemCopyWith<_ChartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
