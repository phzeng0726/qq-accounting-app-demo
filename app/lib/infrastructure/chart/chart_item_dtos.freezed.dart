// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chart_item_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChartItemDto _$ChartItemDtoFromJson(Map<String, dynamic> json) {
  return _ChartItemDto.fromJson(json);
}

/// @nodoc
class _$ChartItemDtoTearOff {
  const _$ChartItemDtoTearOff();

  _ChartItemDto call(
      {required String category,
      required int amount,
      required num percentage}) {
    return _ChartItemDto(
      category: category,
      amount: amount,
      percentage: percentage,
    );
  }

  ChartItemDto fromJson(Map<String, Object?> json) {
    return ChartItemDto.fromJson(json);
  }
}

/// @nodoc
const $ChartItemDto = _$ChartItemDtoTearOff();

/// @nodoc
mixin _$ChartItemDto {
  String get category => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  num get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartItemDtoCopyWith<ChartItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartItemDtoCopyWith<$Res> {
  factory $ChartItemDtoCopyWith(
          ChartItemDto value, $Res Function(ChartItemDto) then) =
      _$ChartItemDtoCopyWithImpl<$Res>;
  $Res call({String category, int amount, num percentage});
}

/// @nodoc
class _$ChartItemDtoCopyWithImpl<$Res> implements $ChartItemDtoCopyWith<$Res> {
  _$ChartItemDtoCopyWithImpl(this._value, this._then);

  final ChartItemDto _value;
  // ignore: unused_field
  final $Res Function(ChartItemDto) _then;

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
abstract class _$ChartItemDtoCopyWith<$Res>
    implements $ChartItemDtoCopyWith<$Res> {
  factory _$ChartItemDtoCopyWith(
          _ChartItemDto value, $Res Function(_ChartItemDto) then) =
      __$ChartItemDtoCopyWithImpl<$Res>;
  @override
  $Res call({String category, int amount, num percentage});
}

/// @nodoc
class __$ChartItemDtoCopyWithImpl<$Res> extends _$ChartItemDtoCopyWithImpl<$Res>
    implements _$ChartItemDtoCopyWith<$Res> {
  __$ChartItemDtoCopyWithImpl(
      _ChartItemDto _value, $Res Function(_ChartItemDto) _then)
      : super(_value, (v) => _then(v as _ChartItemDto));

  @override
  _ChartItemDto get _value => super._value as _ChartItemDto;

  @override
  $Res call({
    Object? category = freezed,
    Object? amount = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_ChartItemDto(
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
@JsonSerializable()
class _$_ChartItemDto extends _ChartItemDto {
  const _$_ChartItemDto(
      {required this.category, required this.amount, required this.percentage})
      : super._();

  factory _$_ChartItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChartItemDtoFromJson(json);

  @override
  final String category;
  @override
  final int amount;
  @override
  final num percentage;

  @override
  String toString() {
    return 'ChartItemDto(category: $category, amount: $amount, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChartItemDto &&
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
  _$ChartItemDtoCopyWith<_ChartItemDto> get copyWith =>
      __$ChartItemDtoCopyWithImpl<_ChartItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChartItemDtoToJson(this);
  }
}

abstract class _ChartItemDto extends ChartItemDto {
  const factory _ChartItemDto(
      {required String category,
      required int amount,
      required num percentage}) = _$_ChartItemDto;
  const _ChartItemDto._() : super._();

  factory _ChartItemDto.fromJson(Map<String, dynamic> json) =
      _$_ChartItemDto.fromJson;

  @override
  String get category;
  @override
  int get amount;
  @override
  num get percentage;
  @override
  @JsonKey(ignore: true)
  _$ChartItemDtoCopyWith<_ChartItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
