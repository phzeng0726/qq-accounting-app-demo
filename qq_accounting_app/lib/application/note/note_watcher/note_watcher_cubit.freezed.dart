// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteWatcherStateTearOff {
  const _$NoteWatcherStateTearOff();

  _NoteWatcherState call(
      {required LoadStatus loadStatus,
      required Account account,
      required List<Category> expenseCategoryList,
      required List<Category> incomeCategoryList,
      required List<Note> notes,
      required int dailyIncomeAmount,
      required int dailyExpenseAmount,
      required int dailyNetAmount,
      required CalendarFormat calendarFormat,
      required RangeSelectionMode rangeSelectionMode,
      required DateTime focusedDay,
      required DateTime? selectedDay,
      required DateTime? rangeStart,
      required DateTime? rangeEnd,
      required Option<NoteFailure> failureOption}) {
    return _NoteWatcherState(
      loadStatus: loadStatus,
      account: account,
      expenseCategoryList: expenseCategoryList,
      incomeCategoryList: incomeCategoryList,
      notes: notes,
      dailyIncomeAmount: dailyIncomeAmount,
      dailyExpenseAmount: dailyExpenseAmount,
      dailyNetAmount: dailyNetAmount,
      calendarFormat: calendarFormat,
      rangeSelectionMode: rangeSelectionMode,
      focusedDay: focusedDay,
      selectedDay: selectedDay,
      rangeStart: rangeStart,
      rangeEnd: rangeEnd,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $NoteWatcherState = _$NoteWatcherStateTearOff();

/// @nodoc
mixin _$NoteWatcherState {
  LoadStatus get loadStatus => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  List<Category> get expenseCategoryList => throw _privateConstructorUsedError;
  List<Category> get incomeCategoryList => throw _privateConstructorUsedError;
  List<Note> get notes => throw _privateConstructorUsedError;
  int get dailyIncomeAmount => throw _privateConstructorUsedError;
  int get dailyExpenseAmount => throw _privateConstructorUsedError;
  int get dailyNetAmount => throw _privateConstructorUsedError; // 月曆
  CalendarFormat get calendarFormat => throw _privateConstructorUsedError;
  RangeSelectionMode get rangeSelectionMode =>
      throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  DateTime? get rangeStart => throw _privateConstructorUsedError;
  DateTime? get rangeEnd => throw _privateConstructorUsedError;
  Option<NoteFailure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteWatcherStateCopyWith<NoteWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteWatcherStateCopyWith<$Res> {
  factory $NoteWatcherStateCopyWith(
          NoteWatcherState value, $Res Function(NoteWatcherState) then) =
      _$NoteWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {LoadStatus loadStatus,
      Account account,
      List<Category> expenseCategoryList,
      List<Category> incomeCategoryList,
      List<Note> notes,
      int dailyIncomeAmount,
      int dailyExpenseAmount,
      int dailyNetAmount,
      CalendarFormat calendarFormat,
      RangeSelectionMode rangeSelectionMode,
      DateTime focusedDay,
      DateTime? selectedDay,
      DateTime? rangeStart,
      DateTime? rangeEnd,
      Option<NoteFailure> failureOption});

  $LoadStatusCopyWith<$Res> get loadStatus;
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$NoteWatcherStateCopyWithImpl<$Res>
    implements $NoteWatcherStateCopyWith<$Res> {
  _$NoteWatcherStateCopyWithImpl(this._value, this._then);

  final NoteWatcherState _value;
  // ignore: unused_field
  final $Res Function(NoteWatcherState) _then;

  @override
  $Res call({
    Object? loadStatus = freezed,
    Object? account = freezed,
    Object? expenseCategoryList = freezed,
    Object? incomeCategoryList = freezed,
    Object? notes = freezed,
    Object? dailyIncomeAmount = freezed,
    Object? dailyExpenseAmount = freezed,
    Object? dailyNetAmount = freezed,
    Object? calendarFormat = freezed,
    Object? rangeSelectionMode = freezed,
    Object? focusedDay = freezed,
    Object? selectedDay = freezed,
    Object? rangeStart = freezed,
    Object? rangeEnd = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      loadStatus: loadStatus == freezed
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      expenseCategoryList: expenseCategoryList == freezed
          ? _value.expenseCategoryList
          : expenseCategoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      incomeCategoryList: incomeCategoryList == freezed
          ? _value.incomeCategoryList
          : incomeCategoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      dailyIncomeAmount: dailyIncomeAmount == freezed
          ? _value.dailyIncomeAmount
          : dailyIncomeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyExpenseAmount: dailyExpenseAmount == freezed
          ? _value.dailyExpenseAmount
          : dailyExpenseAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyNetAmount: dailyNetAmount == freezed
          ? _value.dailyNetAmount
          : dailyNetAmount // ignore: cast_nullable_to_non_nullable
              as int,
      calendarFormat: calendarFormat == freezed
          ? _value.calendarFormat
          : calendarFormat // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
      rangeSelectionMode: rangeSelectionMode == freezed
          ? _value.rangeSelectionMode
          : rangeSelectionMode // ignore: cast_nullable_to_non_nullable
              as RangeSelectionMode,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rangeStart: rangeStart == freezed
          ? _value.rangeStart
          : rangeStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rangeEnd: rangeEnd == freezed
          ? _value.rangeEnd
          : rangeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<NoteFailure>,
    ));
  }

  @override
  $LoadStatusCopyWith<$Res> get loadStatus {
    return $LoadStatusCopyWith<$Res>(_value.loadStatus, (value) {
      return _then(_value.copyWith(loadStatus: value));
    });
  }

  @override
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$NoteWatcherStateCopyWith<$Res>
    implements $NoteWatcherStateCopyWith<$Res> {
  factory _$NoteWatcherStateCopyWith(
          _NoteWatcherState value, $Res Function(_NoteWatcherState) then) =
      __$NoteWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoadStatus loadStatus,
      Account account,
      List<Category> expenseCategoryList,
      List<Category> incomeCategoryList,
      List<Note> notes,
      int dailyIncomeAmount,
      int dailyExpenseAmount,
      int dailyNetAmount,
      CalendarFormat calendarFormat,
      RangeSelectionMode rangeSelectionMode,
      DateTime focusedDay,
      DateTime? selectedDay,
      DateTime? rangeStart,
      DateTime? rangeEnd,
      Option<NoteFailure> failureOption});

  @override
  $LoadStatusCopyWith<$Res> get loadStatus;
  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$NoteWatcherStateCopyWithImpl<$Res>
    extends _$NoteWatcherStateCopyWithImpl<$Res>
    implements _$NoteWatcherStateCopyWith<$Res> {
  __$NoteWatcherStateCopyWithImpl(
      _NoteWatcherState _value, $Res Function(_NoteWatcherState) _then)
      : super(_value, (v) => _then(v as _NoteWatcherState));

  @override
  _NoteWatcherState get _value => super._value as _NoteWatcherState;

  @override
  $Res call({
    Object? loadStatus = freezed,
    Object? account = freezed,
    Object? expenseCategoryList = freezed,
    Object? incomeCategoryList = freezed,
    Object? notes = freezed,
    Object? dailyIncomeAmount = freezed,
    Object? dailyExpenseAmount = freezed,
    Object? dailyNetAmount = freezed,
    Object? calendarFormat = freezed,
    Object? rangeSelectionMode = freezed,
    Object? focusedDay = freezed,
    Object? selectedDay = freezed,
    Object? rangeStart = freezed,
    Object? rangeEnd = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_NoteWatcherState(
      loadStatus: loadStatus == freezed
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      expenseCategoryList: expenseCategoryList == freezed
          ? _value.expenseCategoryList
          : expenseCategoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      incomeCategoryList: incomeCategoryList == freezed
          ? _value.incomeCategoryList
          : incomeCategoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      dailyIncomeAmount: dailyIncomeAmount == freezed
          ? _value.dailyIncomeAmount
          : dailyIncomeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyExpenseAmount: dailyExpenseAmount == freezed
          ? _value.dailyExpenseAmount
          : dailyExpenseAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dailyNetAmount: dailyNetAmount == freezed
          ? _value.dailyNetAmount
          : dailyNetAmount // ignore: cast_nullable_to_non_nullable
              as int,
      calendarFormat: calendarFormat == freezed
          ? _value.calendarFormat
          : calendarFormat // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
      rangeSelectionMode: rangeSelectionMode == freezed
          ? _value.rangeSelectionMode
          : rangeSelectionMode // ignore: cast_nullable_to_non_nullable
              as RangeSelectionMode,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rangeStart: rangeStart == freezed
          ? _value.rangeStart
          : rangeStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rangeEnd: rangeEnd == freezed
          ? _value.rangeEnd
          : rangeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<NoteFailure>,
    ));
  }
}

/// @nodoc

class _$_NoteWatcherState implements _NoteWatcherState {
  const _$_NoteWatcherState(
      {required this.loadStatus,
      required this.account,
      required this.expenseCategoryList,
      required this.incomeCategoryList,
      required this.notes,
      required this.dailyIncomeAmount,
      required this.dailyExpenseAmount,
      required this.dailyNetAmount,
      required this.calendarFormat,
      required this.rangeSelectionMode,
      required this.focusedDay,
      required this.selectedDay,
      required this.rangeStart,
      required this.rangeEnd,
      required this.failureOption});

  @override
  final LoadStatus loadStatus;
  @override
  final Account account;
  @override
  final List<Category> expenseCategoryList;
  @override
  final List<Category> incomeCategoryList;
  @override
  final List<Note> notes;
  @override
  final int dailyIncomeAmount;
  @override
  final int dailyExpenseAmount;
  @override
  final int dailyNetAmount;
  @override // 月曆
  final CalendarFormat calendarFormat;
  @override
  final RangeSelectionMode rangeSelectionMode;
  @override
  final DateTime focusedDay;
  @override
  final DateTime? selectedDay;
  @override
  final DateTime? rangeStart;
  @override
  final DateTime? rangeEnd;
  @override
  final Option<NoteFailure> failureOption;

  @override
  String toString() {
    return 'NoteWatcherState(loadStatus: $loadStatus, account: $account, expenseCategoryList: $expenseCategoryList, incomeCategoryList: $incomeCategoryList, notes: $notes, dailyIncomeAmount: $dailyIncomeAmount, dailyExpenseAmount: $dailyExpenseAmount, dailyNetAmount: $dailyNetAmount, calendarFormat: $calendarFormat, rangeSelectionMode: $rangeSelectionMode, focusedDay: $focusedDay, selectedDay: $selectedDay, rangeStart: $rangeStart, rangeEnd: $rangeEnd, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteWatcherState &&
            const DeepCollectionEquality()
                .equals(other.loadStatus, loadStatus) &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality()
                .equals(other.expenseCategoryList, expenseCategoryList) &&
            const DeepCollectionEquality()
                .equals(other.incomeCategoryList, incomeCategoryList) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality()
                .equals(other.dailyIncomeAmount, dailyIncomeAmount) &&
            const DeepCollectionEquality()
                .equals(other.dailyExpenseAmount, dailyExpenseAmount) &&
            const DeepCollectionEquality()
                .equals(other.dailyNetAmount, dailyNetAmount) &&
            const DeepCollectionEquality()
                .equals(other.calendarFormat, calendarFormat) &&
            const DeepCollectionEquality()
                .equals(other.rangeSelectionMode, rangeSelectionMode) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay) &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.rangeStart, rangeStart) &&
            const DeepCollectionEquality().equals(other.rangeEnd, rangeEnd) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loadStatus),
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(expenseCategoryList),
      const DeepCollectionEquality().hash(incomeCategoryList),
      const DeepCollectionEquality().hash(notes),
      const DeepCollectionEquality().hash(dailyIncomeAmount),
      const DeepCollectionEquality().hash(dailyExpenseAmount),
      const DeepCollectionEquality().hash(dailyNetAmount),
      const DeepCollectionEquality().hash(calendarFormat),
      const DeepCollectionEquality().hash(rangeSelectionMode),
      const DeepCollectionEquality().hash(focusedDay),
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(rangeStart),
      const DeepCollectionEquality().hash(rangeEnd),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$NoteWatcherStateCopyWith<_NoteWatcherState> get copyWith =>
      __$NoteWatcherStateCopyWithImpl<_NoteWatcherState>(this, _$identity);
}

abstract class _NoteWatcherState implements NoteWatcherState {
  const factory _NoteWatcherState(
      {required LoadStatus loadStatus,
      required Account account,
      required List<Category> expenseCategoryList,
      required List<Category> incomeCategoryList,
      required List<Note> notes,
      required int dailyIncomeAmount,
      required int dailyExpenseAmount,
      required int dailyNetAmount,
      required CalendarFormat calendarFormat,
      required RangeSelectionMode rangeSelectionMode,
      required DateTime focusedDay,
      required DateTime? selectedDay,
      required DateTime? rangeStart,
      required DateTime? rangeEnd,
      required Option<NoteFailure> failureOption}) = _$_NoteWatcherState;

  @override
  LoadStatus get loadStatus;
  @override
  Account get account;
  @override
  List<Category> get expenseCategoryList;
  @override
  List<Category> get incomeCategoryList;
  @override
  List<Note> get notes;
  @override
  int get dailyIncomeAmount;
  @override
  int get dailyExpenseAmount;
  @override
  int get dailyNetAmount;
  @override // 月曆
  CalendarFormat get calendarFormat;
  @override
  RangeSelectionMode get rangeSelectionMode;
  @override
  DateTime get focusedDay;
  @override
  DateTime? get selectedDay;
  @override
  DateTime? get rangeStart;
  @override
  DateTime? get rangeEnd;
  @override
  Option<NoteFailure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$NoteWatcherStateCopyWith<_NoteWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
