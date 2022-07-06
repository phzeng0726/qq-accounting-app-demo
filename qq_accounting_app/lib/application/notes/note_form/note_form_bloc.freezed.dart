// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

  _Initialized initialized(Note initialNote, bool isEditing) {
    return _Initialized(
      initialNote,
      isEditing,
    );
  }

  _AmountTypeChanged amountTypeChanged(String amountTypeStr) {
    return _AmountTypeChanged(
      amountTypeStr,
    );
  }

  _DateTimeChanged dateTimeChanged(DateTime dateTime) {
    return _DateTimeChanged(
      dateTime,
    );
  }

  _TempAmountChanged tempAmountChanged(String amountStr) {
    return _TempAmountChanged(
      amountStr,
    );
  }

  _AmountSaved amountSaved(String amountStr) {
    return _AmountSaved(
      amountStr,
    );
  }

  _CategoryChanged categoryChanged(String categoryStr) {
    return _CategoryChanged(
      categoryStr,
    );
  }

  _ItemNameChanged itemNameChanged(String itemNameStr) {
    return _ItemNameChanged(
      itemNameStr,
    );
  }

  _MemoChanged memoChanged(String memoStr) {
    return _MemoChanged(
      memoStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $NoteFormEvent = _$NoteFormEventTearOff();

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Note initialNote, bool isEditing});

  $NoteCopyWith<$Res> get initialNote;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialNote = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_Initialized(
      initialNote == freezed
          ? _value.initialNote
          : initialNote // ignore: cast_nullable_to_non_nullable
              as Note,
      isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $NoteCopyWith<$Res> get initialNote {
    return $NoteCopyWith<$Res>(_value.initialNote, (value) {
      return _then(_value.copyWith(initialNote: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialNote, this.isEditing);

  @override
  final Note initialNote;
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'NoteFormEvent.initialized(initialNote: $initialNote, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialNote, initialNote) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialNote),
      const DeepCollectionEquality().hash(isEditing));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialNote, isEditing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialNote, isEditing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNote, isEditing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements NoteFormEvent {
  const factory _Initialized(Note initialNote, bool isEditing) = _$_Initialized;

  Note get initialNote;
  bool get isEditing;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AmountTypeChangedCopyWith<$Res> {
  factory _$AmountTypeChangedCopyWith(
          _AmountTypeChanged value, $Res Function(_AmountTypeChanged) then) =
      __$AmountTypeChangedCopyWithImpl<$Res>;
  $Res call({String amountTypeStr});
}

/// @nodoc
class __$AmountTypeChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$AmountTypeChangedCopyWith<$Res> {
  __$AmountTypeChangedCopyWithImpl(
      _AmountTypeChanged _value, $Res Function(_AmountTypeChanged) _then)
      : super(_value, (v) => _then(v as _AmountTypeChanged));

  @override
  _AmountTypeChanged get _value => super._value as _AmountTypeChanged;

  @override
  $Res call({
    Object? amountTypeStr = freezed,
  }) {
    return _then(_AmountTypeChanged(
      amountTypeStr == freezed
          ? _value.amountTypeStr
          : amountTypeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AmountTypeChanged implements _AmountTypeChanged {
  const _$_AmountTypeChanged(this.amountTypeStr);

  @override
  final String amountTypeStr;

  @override
  String toString() {
    return 'NoteFormEvent.amountTypeChanged(amountTypeStr: $amountTypeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AmountTypeChanged &&
            const DeepCollectionEquality()
                .equals(other.amountTypeStr, amountTypeStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(amountTypeStr));

  @JsonKey(ignore: true)
  @override
  _$AmountTypeChangedCopyWith<_AmountTypeChanged> get copyWith =>
      __$AmountTypeChangedCopyWithImpl<_AmountTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) {
    return amountTypeChanged(amountTypeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) {
    return amountTypeChanged?.call(amountTypeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (amountTypeChanged != null) {
      return amountTypeChanged(amountTypeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return amountTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return amountTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (amountTypeChanged != null) {
      return amountTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountTypeChanged implements NoteFormEvent {
  const factory _AmountTypeChanged(String amountTypeStr) = _$_AmountTypeChanged;

  String get amountTypeStr;
  @JsonKey(ignore: true)
  _$AmountTypeChangedCopyWith<_AmountTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DateTimeChangedCopyWith<$Res> {
  factory _$DateTimeChangedCopyWith(
          _DateTimeChanged value, $Res Function(_DateTimeChanged) then) =
      __$DateTimeChangedCopyWithImpl<$Res>;
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$DateTimeChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$DateTimeChangedCopyWith<$Res> {
  __$DateTimeChangedCopyWithImpl(
      _DateTimeChanged _value, $Res Function(_DateTimeChanged) _then)
      : super(_value, (v) => _then(v as _DateTimeChanged));

  @override
  _DateTimeChanged get _value => super._value as _DateTimeChanged;

  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_DateTimeChanged(
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateTimeChanged implements _DateTimeChanged {
  const _$_DateTimeChanged(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'NoteFormEvent.dateTimeChanged(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateTimeChanged &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$DateTimeChangedCopyWith<_DateTimeChanged> get copyWith =>
      __$DateTimeChangedCopyWithImpl<_DateTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) {
    return dateTimeChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) {
    return dateTimeChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dateTimeChanged != null) {
      return dateTimeChanged(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return dateTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return dateTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateTimeChanged != null) {
      return dateTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _DateTimeChanged implements NoteFormEvent {
  const factory _DateTimeChanged(DateTime dateTime) = _$_DateTimeChanged;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$DateTimeChangedCopyWith<_DateTimeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TempAmountChangedCopyWith<$Res> {
  factory _$TempAmountChangedCopyWith(
          _TempAmountChanged value, $Res Function(_TempAmountChanged) then) =
      __$TempAmountChangedCopyWithImpl<$Res>;
  $Res call({String amountStr});
}

/// @nodoc
class __$TempAmountChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$TempAmountChangedCopyWith<$Res> {
  __$TempAmountChangedCopyWithImpl(
      _TempAmountChanged _value, $Res Function(_TempAmountChanged) _then)
      : super(_value, (v) => _then(v as _TempAmountChanged));

  @override
  _TempAmountChanged get _value => super._value as _TempAmountChanged;

  @override
  $Res call({
    Object? amountStr = freezed,
  }) {
    return _then(_TempAmountChanged(
      amountStr == freezed
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TempAmountChanged implements _TempAmountChanged {
  const _$_TempAmountChanged(this.amountStr);

  @override
  final String amountStr;

  @override
  String toString() {
    return 'NoteFormEvent.tempAmountChanged(amountStr: $amountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TempAmountChanged &&
            const DeepCollectionEquality().equals(other.amountStr, amountStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amountStr));

  @JsonKey(ignore: true)
  @override
  _$TempAmountChangedCopyWith<_TempAmountChanged> get copyWith =>
      __$TempAmountChangedCopyWithImpl<_TempAmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) {
    return tempAmountChanged(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) {
    return tempAmountChanged?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (tempAmountChanged != null) {
      return tempAmountChanged(amountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return tempAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return tempAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (tempAmountChanged != null) {
      return tempAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _TempAmountChanged implements NoteFormEvent {
  const factory _TempAmountChanged(String amountStr) = _$_TempAmountChanged;

  String get amountStr;
  @JsonKey(ignore: true)
  _$TempAmountChangedCopyWith<_TempAmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AmountSavedCopyWith<$Res> {
  factory _$AmountSavedCopyWith(
          _AmountSaved value, $Res Function(_AmountSaved) then) =
      __$AmountSavedCopyWithImpl<$Res>;
  $Res call({String amountStr});
}

/// @nodoc
class __$AmountSavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$AmountSavedCopyWith<$Res> {
  __$AmountSavedCopyWithImpl(
      _AmountSaved _value, $Res Function(_AmountSaved) _then)
      : super(_value, (v) => _then(v as _AmountSaved));

  @override
  _AmountSaved get _value => super._value as _AmountSaved;

  @override
  $Res call({
    Object? amountStr = freezed,
  }) {
    return _then(_AmountSaved(
      amountStr == freezed
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AmountSaved implements _AmountSaved {
  const _$_AmountSaved(this.amountStr);

  @override
  final String amountStr;

  @override
  String toString() {
    return 'NoteFormEvent.amountSaved(amountStr: $amountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AmountSaved &&
            const DeepCollectionEquality().equals(other.amountStr, amountStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amountStr));

  @JsonKey(ignore: true)
  @override
  _$AmountSavedCopyWith<_AmountSaved> get copyWith =>
      __$AmountSavedCopyWithImpl<_AmountSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) {
    return amountSaved(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) {
    return amountSaved?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (amountSaved != null) {
      return amountSaved(amountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return amountSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return amountSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (amountSaved != null) {
      return amountSaved(this);
    }
    return orElse();
  }
}

abstract class _AmountSaved implements NoteFormEvent {
  const factory _AmountSaved(String amountStr) = _$_AmountSaved;

  String get amountStr;
  @JsonKey(ignore: true)
  _$AmountSavedCopyWith<_AmountSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CategoryChangedCopyWith<$Res> {
  factory _$CategoryChangedCopyWith(
          _CategoryChanged value, $Res Function(_CategoryChanged) then) =
      __$CategoryChangedCopyWithImpl<$Res>;
  $Res call({String categoryStr});
}

/// @nodoc
class __$CategoryChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$CategoryChangedCopyWith<$Res> {
  __$CategoryChangedCopyWithImpl(
      _CategoryChanged _value, $Res Function(_CategoryChanged) _then)
      : super(_value, (v) => _then(v as _CategoryChanged));

  @override
  _CategoryChanged get _value => super._value as _CategoryChanged;

  @override
  $Res call({
    Object? categoryStr = freezed,
  }) {
    return _then(_CategoryChanged(
      categoryStr == freezed
          ? _value.categoryStr
          : categoryStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryChanged implements _CategoryChanged {
  const _$_CategoryChanged(this.categoryStr);

  @override
  final String categoryStr;

  @override
  String toString() {
    return 'NoteFormEvent.categoryChanged(categoryStr: $categoryStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryChanged &&
            const DeepCollectionEquality()
                .equals(other.categoryStr, categoryStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(categoryStr));

  @JsonKey(ignore: true)
  @override
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      __$CategoryChangedCopyWithImpl<_CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) {
    return categoryChanged(categoryStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) {
    return categoryChanged?.call(categoryStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(categoryStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements NoteFormEvent {
  const factory _CategoryChanged(String categoryStr) = _$_CategoryChanged;

  String get categoryStr;
  @JsonKey(ignore: true)
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ItemNameChangedCopyWith<$Res> {
  factory _$ItemNameChangedCopyWith(
          _ItemNameChanged value, $Res Function(_ItemNameChanged) then) =
      __$ItemNameChangedCopyWithImpl<$Res>;
  $Res call({String itemNameStr});
}

/// @nodoc
class __$ItemNameChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$ItemNameChangedCopyWith<$Res> {
  __$ItemNameChangedCopyWithImpl(
      _ItemNameChanged _value, $Res Function(_ItemNameChanged) _then)
      : super(_value, (v) => _then(v as _ItemNameChanged));

  @override
  _ItemNameChanged get _value => super._value as _ItemNameChanged;

  @override
  $Res call({
    Object? itemNameStr = freezed,
  }) {
    return _then(_ItemNameChanged(
      itemNameStr == freezed
          ? _value.itemNameStr
          : itemNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ItemNameChanged implements _ItemNameChanged {
  const _$_ItemNameChanged(this.itemNameStr);

  @override
  final String itemNameStr;

  @override
  String toString() {
    return 'NoteFormEvent.itemNameChanged(itemNameStr: $itemNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemNameChanged &&
            const DeepCollectionEquality()
                .equals(other.itemNameStr, itemNameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(itemNameStr));

  @JsonKey(ignore: true)
  @override
  _$ItemNameChangedCopyWith<_ItemNameChanged> get copyWith =>
      __$ItemNameChangedCopyWithImpl<_ItemNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) {
    return itemNameChanged(itemNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) {
    return itemNameChanged?.call(itemNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (itemNameChanged != null) {
      return itemNameChanged(itemNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return itemNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return itemNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (itemNameChanged != null) {
      return itemNameChanged(this);
    }
    return orElse();
  }
}

abstract class _ItemNameChanged implements NoteFormEvent {
  const factory _ItemNameChanged(String itemNameStr) = _$_ItemNameChanged;

  String get itemNameStr;
  @JsonKey(ignore: true)
  _$ItemNameChangedCopyWith<_ItemNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MemoChangedCopyWith<$Res> {
  factory _$MemoChangedCopyWith(
          _MemoChanged value, $Res Function(_MemoChanged) then) =
      __$MemoChangedCopyWithImpl<$Res>;
  $Res call({String memoStr});
}

/// @nodoc
class __$MemoChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$MemoChangedCopyWith<$Res> {
  __$MemoChangedCopyWithImpl(
      _MemoChanged _value, $Res Function(_MemoChanged) _then)
      : super(_value, (v) => _then(v as _MemoChanged));

  @override
  _MemoChanged get _value => super._value as _MemoChanged;

  @override
  $Res call({
    Object? memoStr = freezed,
  }) {
    return _then(_MemoChanged(
      memoStr == freezed
          ? _value.memoStr
          : memoStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MemoChanged implements _MemoChanged {
  const _$_MemoChanged(this.memoStr);

  @override
  final String memoStr;

  @override
  String toString() {
    return 'NoteFormEvent.memoChanged(memoStr: $memoStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MemoChanged &&
            const DeepCollectionEquality().equals(other.memoStr, memoStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(memoStr));

  @JsonKey(ignore: true)
  @override
  _$MemoChangedCopyWith<_MemoChanged> get copyWith =>
      __$MemoChangedCopyWithImpl<_MemoChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) {
    return memoChanged(memoStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) {
    return memoChanged?.call(memoStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (memoChanged != null) {
      return memoChanged(memoStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return memoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return memoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (memoChanged != null) {
      return memoChanged(this);
    }
    return orElse();
  }
}

abstract class _MemoChanged implements NoteFormEvent {
  const factory _MemoChanged(String memoStr) = _$_MemoChanged;

  String get memoStr;
  @JsonKey(ignore: true)
  _$MemoChangedCopyWith<_MemoChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note initialNote, bool isEditing) initialized,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String amountStr) amountSaved,
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String itemNameStr) itemNameChanged,
    required TResult Function(String memoStr) memoChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note initialNote, bool isEditing)? initialized,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String amountStr)? amountSaved,
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String itemNameStr)? itemNameChanged,
    TResult Function(String memoStr)? memoChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_AmountSaved value) amountSaved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ItemNameChanged value) itemNameChanged,
    required TResult Function(_MemoChanged value) memoChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_AmountSaved value)? amountSaved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ItemNameChanged value)? itemNameChanged,
    TResult Function(_MemoChanged value)? memoChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NoteFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

  _NoteFormState call(
      {required Note note,
      required String tempAmount,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving}) {
    return _NoteFormState(
      note: note,
      tempAmount: tempAmount,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
    );
  }
}

/// @nodoc
const $NoteFormState = _$NoteFormStateTearOff();

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  String get tempAmount =>
      throw _privateConstructorUsedError; // 計算機暫存的金額字串，用Int比較麻煩所以用String
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Note note,
      String tempAmount,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? tempAmount = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      tempAmount: tempAmount == freezed
          ? _value.tempAmount
          : tempAmount // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(
          _NoteFormState value, $Res Function(_NoteFormState) then) =
      __$NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note note,
      String tempAmount,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(
      _NoteFormState _value, $Res Function(_NoteFormState) _then)
      : super(_value, (v) => _then(v as _NoteFormState));

  @override
  _NoteFormState get _value => super._value as _NoteFormState;

  @override
  $Res call({
    Object? note = freezed,
    Object? tempAmount = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
  }) {
    return _then(_NoteFormState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      tempAmount: tempAmount == freezed
          ? _value.tempAmount
          : tempAmount // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.note,
      required this.tempAmount,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving});

  @override
  final Note note;
  @override
  final String tempAmount;
  @override // 計算機暫存的金額字串，用Int比較麻煩所以用String
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;

  @override
  String toString() {
    return 'NoteFormState(note: $note, tempAmount: $tempAmount, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteFormState &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.tempAmount, tempAmount) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(tempAmount),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving));

  @JsonKey(ignore: true)
  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required Note note,
      required String tempAmount,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving}) = _$_NoteFormState;

  @override
  Note get note;
  @override
  String get tempAmount;
  @override // 計算機暫存的金額字串，用Int比較麻煩所以用String
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
