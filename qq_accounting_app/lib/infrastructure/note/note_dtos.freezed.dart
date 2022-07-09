// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteDto _$NoteDtoFromJson(Map<String, dynamic> json) {
  return _NoteDto.fromJson(json);
}

/// @nodoc
class _$NoteDtoTearOff {
  const _$NoteDtoTearOff();

  _NoteDto call(
      {required int? id,
      required int accountId,
      required String accountTitle,
      required DateTime createdTime,
      required String amountType,
      required DateTime dateTime,
      required int amount,
      required String itemName,
      required String category,
      required String memo}) {
    return _NoteDto(
      id: id,
      accountId: accountId,
      accountTitle: accountTitle,
      createdTime: createdTime,
      amountType: amountType,
      dateTime: dateTime,
      amount: amount,
      itemName: itemName,
      category: category,
      memo: memo,
    );
  }

  NoteDto fromJson(Map<String, Object?> json) {
    return NoteDto.fromJson(json);
  }
}

/// @nodoc
const $NoteDto = _$NoteDtoTearOff();

/// @nodoc
mixin _$NoteDto {
  int? get id => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  String get accountTitle => throw _privateConstructorUsedError;
  DateTime get createdTime => throw _privateConstructorUsedError;
  String get amountType =>
      throw _privateConstructorUsedError; // expense or income
  DateTime get dateTime => throw _privateConstructorUsedError; // 日期
  int get amount => throw _privateConstructorUsedError; // 金額
  String get itemName => throw _privateConstructorUsedError; // 項目名稱
  String get category => throw _privateConstructorUsedError; // 類別：餐費、...
  String get memo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDtoCopyWith<NoteDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDtoCopyWith<$Res> {
  factory $NoteDtoCopyWith(NoteDto value, $Res Function(NoteDto) then) =
      _$NoteDtoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int accountId,
      String accountTitle,
      DateTime createdTime,
      String amountType,
      DateTime dateTime,
      int amount,
      String itemName,
      String category,
      String memo});
}

/// @nodoc
class _$NoteDtoCopyWithImpl<$Res> implements $NoteDtoCopyWith<$Res> {
  _$NoteDtoCopyWithImpl(this._value, this._then);

  final NoteDto _value;
  // ignore: unused_field
  final $Res Function(NoteDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountId = freezed,
    Object? accountTitle = freezed,
    Object? createdTime = freezed,
    Object? amountType = freezed,
    Object? dateTime = freezed,
    Object? amount = freezed,
    Object? itemName = freezed,
    Object? category = freezed,
    Object? memo = freezed,
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
      accountTitle: accountTitle == freezed
          ? _value.accountTitle
          : accountTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amountType: amountType == freezed
          ? _value.amountType
          : amountType // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NoteDtoCopyWith<$Res> implements $NoteDtoCopyWith<$Res> {
  factory _$NoteDtoCopyWith(_NoteDto value, $Res Function(_NoteDto) then) =
      __$NoteDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int accountId,
      String accountTitle,
      DateTime createdTime,
      String amountType,
      DateTime dateTime,
      int amount,
      String itemName,
      String category,
      String memo});
}

/// @nodoc
class __$NoteDtoCopyWithImpl<$Res> extends _$NoteDtoCopyWithImpl<$Res>
    implements _$NoteDtoCopyWith<$Res> {
  __$NoteDtoCopyWithImpl(_NoteDto _value, $Res Function(_NoteDto) _then)
      : super(_value, (v) => _then(v as _NoteDto));

  @override
  _NoteDto get _value => super._value as _NoteDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountId = freezed,
    Object? accountTitle = freezed,
    Object? createdTime = freezed,
    Object? amountType = freezed,
    Object? dateTime = freezed,
    Object? amount = freezed,
    Object? itemName = freezed,
    Object? category = freezed,
    Object? memo = freezed,
  }) {
    return _then(_NoteDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      accountTitle: accountTitle == freezed
          ? _value.accountTitle
          : accountTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amountType: amountType == freezed
          ? _value.amountType
          : amountType // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteDto extends _NoteDto {
  const _$_NoteDto(
      {required this.id,
      required this.accountId,
      required this.accountTitle,
      required this.createdTime,
      required this.amountType,
      required this.dateTime,
      required this.amount,
      required this.itemName,
      required this.category,
      required this.memo})
      : super._();

  factory _$_NoteDto.fromJson(Map<String, dynamic> json) =>
      _$$_NoteDtoFromJson(json);

  @override
  final int? id;
  @override
  final int accountId;
  @override
  final String accountTitle;
  @override
  final DateTime createdTime;
  @override
  final String amountType;
  @override // expense or income
  final DateTime dateTime;
  @override // 日期
  final int amount;
  @override // 金額
  final String itemName;
  @override // 項目名稱
  final String category;
  @override // 類別：餐費、...
  final String memo;

  @override
  String toString() {
    return 'NoteDto(id: $id, accountId: $accountId, accountTitle: $accountTitle, createdTime: $createdTime, amountType: $amountType, dateTime: $dateTime, amount: $amount, itemName: $itemName, category: $category, memo: $memo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality()
                .equals(other.accountTitle, accountTitle) &&
            const DeepCollectionEquality()
                .equals(other.createdTime, createdTime) &&
            const DeepCollectionEquality()
                .equals(other.amountType, amountType) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.itemName, itemName) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.memo, memo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(accountId),
      const DeepCollectionEquality().hash(accountTitle),
      const DeepCollectionEquality().hash(createdTime),
      const DeepCollectionEquality().hash(amountType),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(itemName),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(memo));

  @JsonKey(ignore: true)
  @override
  _$NoteDtoCopyWith<_NoteDto> get copyWith =>
      __$NoteDtoCopyWithImpl<_NoteDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDtoToJson(this);
  }
}

abstract class _NoteDto extends NoteDto {
  const factory _NoteDto(
      {required int? id,
      required int accountId,
      required String accountTitle,
      required DateTime createdTime,
      required String amountType,
      required DateTime dateTime,
      required int amount,
      required String itemName,
      required String category,
      required String memo}) = _$_NoteDto;
  const _NoteDto._() : super._();

  factory _NoteDto.fromJson(Map<String, dynamic> json) = _$_NoteDto.fromJson;

  @override
  int? get id;
  @override
  int get accountId;
  @override
  String get accountTitle;
  @override
  DateTime get createdTime;
  @override
  String get amountType;
  @override // expense or income
  DateTime get dateTime;
  @override // 日期
  int get amount;
  @override // 金額
  String get itemName;
  @override // 項目名稱
  String get category;
  @override // 類別：餐費、...
  String get memo;
  @override
  @JsonKey(ignore: true)
  _$NoteDtoCopyWith<_NoteDto> get copyWith =>
      throw _privateConstructorUsedError;
}
