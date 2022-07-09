// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'statistic_chart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatisticChartStateTearOff {
  const _$StatisticChartStateTearOff();

  _StatisticChartState call(
      {required LoadStatus loadStatus,
      required String amountType,
      required List<ChartItem> chartItems,
      required DateTime dateTime,
      required Account account,
      required bool isChartExpanded,
      required Option<NoteFailure> noteFailureOption,
      required Option<ChartFailure> chartFailureOption}) {
    return _StatisticChartState(
      loadStatus: loadStatus,
      amountType: amountType,
      chartItems: chartItems,
      dateTime: dateTime,
      account: account,
      isChartExpanded: isChartExpanded,
      noteFailureOption: noteFailureOption,
      chartFailureOption: chartFailureOption,
    );
  }
}

/// @nodoc
const $StatisticChartState = _$StatisticChartStateTearOff();

/// @nodoc
mixin _$StatisticChartState {
  LoadStatus get loadStatus => throw _privateConstructorUsedError;
  String get amountType => throw _privateConstructorUsedError;
  List<ChartItem> get chartItems => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  bool get isChartExpanded => throw _privateConstructorUsedError;
  Option<NoteFailure> get noteFailureOption =>
      throw _privateConstructorUsedError;
  Option<ChartFailure> get chartFailureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatisticChartStateCopyWith<StatisticChartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticChartStateCopyWith<$Res> {
  factory $StatisticChartStateCopyWith(
          StatisticChartState value, $Res Function(StatisticChartState) then) =
      _$StatisticChartStateCopyWithImpl<$Res>;
  $Res call(
      {LoadStatus loadStatus,
      String amountType,
      List<ChartItem> chartItems,
      DateTime dateTime,
      Account account,
      bool isChartExpanded,
      Option<NoteFailure> noteFailureOption,
      Option<ChartFailure> chartFailureOption});

  $LoadStatusCopyWith<$Res> get loadStatus;
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$StatisticChartStateCopyWithImpl<$Res>
    implements $StatisticChartStateCopyWith<$Res> {
  _$StatisticChartStateCopyWithImpl(this._value, this._then);

  final StatisticChartState _value;
  // ignore: unused_field
  final $Res Function(StatisticChartState) _then;

  @override
  $Res call({
    Object? loadStatus = freezed,
    Object? amountType = freezed,
    Object? chartItems = freezed,
    Object? dateTime = freezed,
    Object? account = freezed,
    Object? isChartExpanded = freezed,
    Object? noteFailureOption = freezed,
    Object? chartFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      loadStatus: loadStatus == freezed
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      amountType: amountType == freezed
          ? _value.amountType
          : amountType // ignore: cast_nullable_to_non_nullable
              as String,
      chartItems: chartItems == freezed
          ? _value.chartItems
          : chartItems // ignore: cast_nullable_to_non_nullable
              as List<ChartItem>,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      isChartExpanded: isChartExpanded == freezed
          ? _value.isChartExpanded
          : isChartExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      noteFailureOption: noteFailureOption == freezed
          ? _value.noteFailureOption
          : noteFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<NoteFailure>,
      chartFailureOption: chartFailureOption == freezed
          ? _value.chartFailureOption
          : chartFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<ChartFailure>,
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
abstract class _$StatisticChartStateCopyWith<$Res>
    implements $StatisticChartStateCopyWith<$Res> {
  factory _$StatisticChartStateCopyWith(_StatisticChartState value,
          $Res Function(_StatisticChartState) then) =
      __$StatisticChartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoadStatus loadStatus,
      String amountType,
      List<ChartItem> chartItems,
      DateTime dateTime,
      Account account,
      bool isChartExpanded,
      Option<NoteFailure> noteFailureOption,
      Option<ChartFailure> chartFailureOption});

  @override
  $LoadStatusCopyWith<$Res> get loadStatus;
  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$StatisticChartStateCopyWithImpl<$Res>
    extends _$StatisticChartStateCopyWithImpl<$Res>
    implements _$StatisticChartStateCopyWith<$Res> {
  __$StatisticChartStateCopyWithImpl(
      _StatisticChartState _value, $Res Function(_StatisticChartState) _then)
      : super(_value, (v) => _then(v as _StatisticChartState));

  @override
  _StatisticChartState get _value => super._value as _StatisticChartState;

  @override
  $Res call({
    Object? loadStatus = freezed,
    Object? amountType = freezed,
    Object? chartItems = freezed,
    Object? dateTime = freezed,
    Object? account = freezed,
    Object? isChartExpanded = freezed,
    Object? noteFailureOption = freezed,
    Object? chartFailureOption = freezed,
  }) {
    return _then(_StatisticChartState(
      loadStatus: loadStatus == freezed
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      amountType: amountType == freezed
          ? _value.amountType
          : amountType // ignore: cast_nullable_to_non_nullable
              as String,
      chartItems: chartItems == freezed
          ? _value.chartItems
          : chartItems // ignore: cast_nullable_to_non_nullable
              as List<ChartItem>,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      isChartExpanded: isChartExpanded == freezed
          ? _value.isChartExpanded
          : isChartExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      noteFailureOption: noteFailureOption == freezed
          ? _value.noteFailureOption
          : noteFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<NoteFailure>,
      chartFailureOption: chartFailureOption == freezed
          ? _value.chartFailureOption
          : chartFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<ChartFailure>,
    ));
  }
}

/// @nodoc

class _$_StatisticChartState implements _StatisticChartState {
  const _$_StatisticChartState(
      {required this.loadStatus,
      required this.amountType,
      required this.chartItems,
      required this.dateTime,
      required this.account,
      required this.isChartExpanded,
      required this.noteFailureOption,
      required this.chartFailureOption});

  @override
  final LoadStatus loadStatus;
  @override
  final String amountType;
  @override
  final List<ChartItem> chartItems;
  @override
  final DateTime dateTime;
  @override
  final Account account;
  @override
  final bool isChartExpanded;
  @override
  final Option<NoteFailure> noteFailureOption;
  @override
  final Option<ChartFailure> chartFailureOption;

  @override
  String toString() {
    return 'StatisticChartState(loadStatus: $loadStatus, amountType: $amountType, chartItems: $chartItems, dateTime: $dateTime, account: $account, isChartExpanded: $isChartExpanded, noteFailureOption: $noteFailureOption, chartFailureOption: $chartFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatisticChartState &&
            const DeepCollectionEquality()
                .equals(other.loadStatus, loadStatus) &&
            const DeepCollectionEquality()
                .equals(other.amountType, amountType) &&
            const DeepCollectionEquality()
                .equals(other.chartItems, chartItems) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality()
                .equals(other.isChartExpanded, isChartExpanded) &&
            const DeepCollectionEquality()
                .equals(other.noteFailureOption, noteFailureOption) &&
            const DeepCollectionEquality()
                .equals(other.chartFailureOption, chartFailureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loadStatus),
      const DeepCollectionEquality().hash(amountType),
      const DeepCollectionEquality().hash(chartItems),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(isChartExpanded),
      const DeepCollectionEquality().hash(noteFailureOption),
      const DeepCollectionEquality().hash(chartFailureOption));

  @JsonKey(ignore: true)
  @override
  _$StatisticChartStateCopyWith<_StatisticChartState> get copyWith =>
      __$StatisticChartStateCopyWithImpl<_StatisticChartState>(
          this, _$identity);
}

abstract class _StatisticChartState implements StatisticChartState {
  const factory _StatisticChartState(
          {required LoadStatus loadStatus,
          required String amountType,
          required List<ChartItem> chartItems,
          required DateTime dateTime,
          required Account account,
          required bool isChartExpanded,
          required Option<NoteFailure> noteFailureOption,
          required Option<ChartFailure> chartFailureOption}) =
      _$_StatisticChartState;

  @override
  LoadStatus get loadStatus;
  @override
  String get amountType;
  @override
  List<ChartItem> get chartItems;
  @override
  DateTime get dateTime;
  @override
  Account get account;
  @override
  bool get isChartExpanded;
  @override
  Option<NoteFailure> get noteFailureOption;
  @override
  Option<ChartFailure> get chartFailureOption;
  @override
  @JsonKey(ignore: true)
  _$StatisticChartStateCopyWith<_StatisticChartState> get copyWith =>
      throw _privateConstructorUsedError;
}
