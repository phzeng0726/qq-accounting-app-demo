// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
class _$CategoryDtoTearOff {
  const _$CategoryDtoTearOff();

  _CategoryDto call(
      {required int? id,
      required int accountId,
      required String amountType,
      required String title}) {
    return _CategoryDto(
      id: id,
      accountId: accountId,
      amountType: amountType,
      title: title,
    );
  }

  CategoryDto fromJson(Map<String, Object?> json) {
    return CategoryDto.fromJson(json);
  }
}

/// @nodoc
const $CategoryDto = _$CategoryDtoTearOff();

/// @nodoc
mixin _$CategoryDto {
  int? get id => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  String get amountType =>
      throw _privateConstructorUsedError; // expense or income
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res>;
  $Res call({int? id, int accountId, String amountType, String title});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res> implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  final CategoryDto _value;
  // ignore: unused_field
  final $Res Function(CategoryDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountId = freezed,
    Object? amountType = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      amountType: amountType == freezed
          ? _value.amountType
          : amountType // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$CategoryDtoCopyWith(
          _CategoryDto value, $Res Function(_CategoryDto) then) =
      __$CategoryDtoCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int accountId, String amountType, String title});
}

/// @nodoc
class __$CategoryDtoCopyWithImpl<$Res> extends _$CategoryDtoCopyWithImpl<$Res>
    implements _$CategoryDtoCopyWith<$Res> {
  __$CategoryDtoCopyWithImpl(
      _CategoryDto _value, $Res Function(_CategoryDto) _then)
      : super(_value, (v) => _then(v as _CategoryDto));

  @override
  _CategoryDto get _value => super._value as _CategoryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountId = freezed,
    Object? amountType = freezed,
    Object? title = freezed,
  }) {
    return _then(_CategoryDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      amountType: amountType == freezed
          ? _value.amountType
          : amountType // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDto extends _CategoryDto {
  const _$_CategoryDto(
      {required this.id,
      required this.accountId,
      required this.amountType,
      required this.title})
      : super._();

  factory _$_CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDtoFromJson(json);

  @override
  final int? id;
  @override
  final int accountId;
  @override
  final String amountType;
  @override // expense or income
  final String title;

  @override
  String toString() {
    return 'CategoryDto(id: $id, accountId: $accountId, amountType: $amountType, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality()
                .equals(other.amountType, amountType) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(accountId),
      const DeepCollectionEquality().hash(amountType),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$CategoryDtoCopyWith<_CategoryDto> get copyWith =>
      __$CategoryDtoCopyWithImpl<_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDtoToJson(this);
  }
}

abstract class _CategoryDto extends CategoryDto {
  const factory _CategoryDto(
      {required int? id,
      required int accountId,
      required String amountType,
      required String title}) = _$_CategoryDto;
  const _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryDto.fromJson;

  @override
  int? get id;
  @override
  int get accountId;
  @override
  String get amountType;
  @override // expense or income
  String get title;
  @override
  @JsonKey(ignore: true)
  _$CategoryDtoCopyWith<_CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
