// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'statistic_chart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatisticChartEventTearOff {
  const _$StatisticChartEventTearOff();

  _SelectedAccount selectedAccount(Account account) {
    return _SelectedAccount(
      account,
    );
  }

  _DateTimeChanged dateTimeChanged(DateTime dateTime) {
    return _DateTimeChanged(
      dateTime,
    );
  }

  _AmountTypeChanged amountTypeChanged(String amountTypeStr) {
    return _AmountTypeChanged(
      amountTypeStr,
    );
  }

  _GetSingleDayStarted getSingleDayStarted(
      String amountType, DateTime dateTime) {
    return _GetSingleDayStarted(
      amountType,
      dateTime,
    );
  }

  _GetDuringDayStarted getDuringDayStarted(
      String amountType, DateTime startTime, DateTime endTime) {
    return _GetDuringDayStarted(
      amountType,
      startTime,
      endTime,
    );
  }

  _ChartItemsLoaded chartItemsLoaded(List<ChartItem> chartItems) {
    return _ChartItemsLoaded(
      chartItems,
    );
  }
}

/// @nodoc
const $StatisticChartEvent = _$StatisticChartEventTearOff();

/// @nodoc
mixin _$StatisticChartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(String amountType, DateTime dateTime)
        getSingleDayStarted,
    required TResult Function(
            String amountType, DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<ChartItem> chartItems) chartItemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_ChartItemsLoaded value) chartItemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticChartEventCopyWith<$Res> {
  factory $StatisticChartEventCopyWith(
          StatisticChartEvent value, $Res Function(StatisticChartEvent) then) =
      _$StatisticChartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatisticChartEventCopyWithImpl<$Res>
    implements $StatisticChartEventCopyWith<$Res> {
  _$StatisticChartEventCopyWithImpl(this._value, this._then);

  final StatisticChartEvent _value;
  // ignore: unused_field
  final $Res Function(StatisticChartEvent) _then;
}

/// @nodoc
abstract class _$SelectedAccountCopyWith<$Res> {
  factory _$SelectedAccountCopyWith(
          _SelectedAccount value, $Res Function(_SelectedAccount) then) =
      __$SelectedAccountCopyWithImpl<$Res>;
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$SelectedAccountCopyWithImpl<$Res>
    extends _$StatisticChartEventCopyWithImpl<$Res>
    implements _$SelectedAccountCopyWith<$Res> {
  __$SelectedAccountCopyWithImpl(
      _SelectedAccount _value, $Res Function(_SelectedAccount) _then)
      : super(_value, (v) => _then(v as _SelectedAccount));

  @override
  _SelectedAccount get _value => super._value as _SelectedAccount;

  @override
  $Res call({
    Object? account = freezed,
  }) {
    return _then(_SelectedAccount(
      account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$_SelectedAccount implements _SelectedAccount {
  const _$_SelectedAccount(this.account);

  @override
  final Account account;

  @override
  String toString() {
    return 'StatisticChartEvent.selectedAccount(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectedAccount &&
            const DeepCollectionEquality().equals(other.account, account));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(account));

  @JsonKey(ignore: true)
  @override
  _$SelectedAccountCopyWith<_SelectedAccount> get copyWith =>
      __$SelectedAccountCopyWithImpl<_SelectedAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(String amountType, DateTime dateTime)
        getSingleDayStarted,
    required TResult Function(
            String amountType, DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<ChartItem> chartItems) chartItemsLoaded,
  }) {
    return selectedAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
  }) {
    return selectedAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (selectedAccount != null) {
      return selectedAccount(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_ChartItemsLoaded value) chartItemsLoaded,
  }) {
    return selectedAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
  }) {
    return selectedAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (selectedAccount != null) {
      return selectedAccount(this);
    }
    return orElse();
  }
}

abstract class _SelectedAccount implements StatisticChartEvent {
  const factory _SelectedAccount(Account account) = _$_SelectedAccount;

  Account get account;
  @JsonKey(ignore: true)
  _$SelectedAccountCopyWith<_SelectedAccount> get copyWith =>
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
    extends _$StatisticChartEventCopyWithImpl<$Res>
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
  _$_DateTimeChanged(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'StatisticChartEvent.dateTimeChanged(dateTime: $dateTime)';
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
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(String amountType, DateTime dateTime)
        getSingleDayStarted,
    required TResult Function(
            String amountType, DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<ChartItem> chartItems) chartItemsLoaded,
  }) {
    return dateTimeChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
  }) {
    return dateTimeChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
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
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_ChartItemsLoaded value) chartItemsLoaded,
  }) {
    return dateTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
  }) {
    return dateTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (dateTimeChanged != null) {
      return dateTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _DateTimeChanged implements StatisticChartEvent {
  factory _DateTimeChanged(DateTime dateTime) = _$_DateTimeChanged;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$DateTimeChangedCopyWith<_DateTimeChanged> get copyWith =>
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
    extends _$StatisticChartEventCopyWithImpl<$Res>
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
    return 'StatisticChartEvent.amountTypeChanged(amountTypeStr: $amountTypeStr)';
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
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(String amountType, DateTime dateTime)
        getSingleDayStarted,
    required TResult Function(
            String amountType, DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<ChartItem> chartItems) chartItemsLoaded,
  }) {
    return amountTypeChanged(amountTypeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
  }) {
    return amountTypeChanged?.call(amountTypeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
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
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_ChartItemsLoaded value) chartItemsLoaded,
  }) {
    return amountTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
  }) {
    return amountTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (amountTypeChanged != null) {
      return amountTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountTypeChanged implements StatisticChartEvent {
  const factory _AmountTypeChanged(String amountTypeStr) = _$_AmountTypeChanged;

  String get amountTypeStr;
  @JsonKey(ignore: true)
  _$AmountTypeChangedCopyWith<_AmountTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetSingleDayStartedCopyWith<$Res> {
  factory _$GetSingleDayStartedCopyWith(_GetSingleDayStarted value,
          $Res Function(_GetSingleDayStarted) then) =
      __$GetSingleDayStartedCopyWithImpl<$Res>;
  $Res call({String amountType, DateTime dateTime});
}

/// @nodoc
class __$GetSingleDayStartedCopyWithImpl<$Res>
    extends _$StatisticChartEventCopyWithImpl<$Res>
    implements _$GetSingleDayStartedCopyWith<$Res> {
  __$GetSingleDayStartedCopyWithImpl(
      _GetSingleDayStarted _value, $Res Function(_GetSingleDayStarted) _then)
      : super(_value, (v) => _then(v as _GetSingleDayStarted));

  @override
  _GetSingleDayStarted get _value => super._value as _GetSingleDayStarted;

  @override
  $Res call({
    Object? amountType = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_GetSingleDayStarted(
      amountType == freezed
          ? _value.amountType
          : amountType // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_GetSingleDayStarted implements _GetSingleDayStarted {
  const _$_GetSingleDayStarted(this.amountType, this.dateTime);

  @override
  final String amountType;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'StatisticChartEvent.getSingleDayStarted(amountType: $amountType, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSingleDayStarted &&
            const DeepCollectionEquality()
                .equals(other.amountType, amountType) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amountType),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$GetSingleDayStartedCopyWith<_GetSingleDayStarted> get copyWith =>
      __$GetSingleDayStartedCopyWithImpl<_GetSingleDayStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(String amountType, DateTime dateTime)
        getSingleDayStarted,
    required TResult Function(
            String amountType, DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<ChartItem> chartItems) chartItemsLoaded,
  }) {
    return getSingleDayStarted(amountType, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
  }) {
    return getSingleDayStarted?.call(amountType, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (getSingleDayStarted != null) {
      return getSingleDayStarted(amountType, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_ChartItemsLoaded value) chartItemsLoaded,
  }) {
    return getSingleDayStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
  }) {
    return getSingleDayStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (getSingleDayStarted != null) {
      return getSingleDayStarted(this);
    }
    return orElse();
  }
}

abstract class _GetSingleDayStarted implements StatisticChartEvent {
  const factory _GetSingleDayStarted(String amountType, DateTime dateTime) =
      _$_GetSingleDayStarted;

  String get amountType;
  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$GetSingleDayStartedCopyWith<_GetSingleDayStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDuringDayStartedCopyWith<$Res> {
  factory _$GetDuringDayStartedCopyWith(_GetDuringDayStarted value,
          $Res Function(_GetDuringDayStarted) then) =
      __$GetDuringDayStartedCopyWithImpl<$Res>;
  $Res call({String amountType, DateTime startTime, DateTime endTime});
}

/// @nodoc
class __$GetDuringDayStartedCopyWithImpl<$Res>
    extends _$StatisticChartEventCopyWithImpl<$Res>
    implements _$GetDuringDayStartedCopyWith<$Res> {
  __$GetDuringDayStartedCopyWithImpl(
      _GetDuringDayStarted _value, $Res Function(_GetDuringDayStarted) _then)
      : super(_value, (v) => _then(v as _GetDuringDayStarted));

  @override
  _GetDuringDayStarted get _value => super._value as _GetDuringDayStarted;

  @override
  $Res call({
    Object? amountType = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_GetDuringDayStarted(
      amountType == freezed
          ? _value.amountType
          : amountType // ignore: cast_nullable_to_non_nullable
              as String,
      startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_GetDuringDayStarted implements _GetDuringDayStarted {
  const _$_GetDuringDayStarted(this.amountType, this.startTime, this.endTime);

  @override
  final String amountType;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'StatisticChartEvent.getDuringDayStarted(amountType: $amountType, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetDuringDayStarted &&
            const DeepCollectionEquality()
                .equals(other.amountType, amountType) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amountType),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime));

  @JsonKey(ignore: true)
  @override
  _$GetDuringDayStartedCopyWith<_GetDuringDayStarted> get copyWith =>
      __$GetDuringDayStartedCopyWithImpl<_GetDuringDayStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(String amountType, DateTime dateTime)
        getSingleDayStarted,
    required TResult Function(
            String amountType, DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<ChartItem> chartItems) chartItemsLoaded,
  }) {
    return getDuringDayStarted(amountType, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
  }) {
    return getDuringDayStarted?.call(amountType, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (getDuringDayStarted != null) {
      return getDuringDayStarted(amountType, startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_ChartItemsLoaded value) chartItemsLoaded,
  }) {
    return getDuringDayStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
  }) {
    return getDuringDayStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (getDuringDayStarted != null) {
      return getDuringDayStarted(this);
    }
    return orElse();
  }
}

abstract class _GetDuringDayStarted implements StatisticChartEvent {
  const factory _GetDuringDayStarted(
          String amountType, DateTime startTime, DateTime endTime) =
      _$_GetDuringDayStarted;

  String get amountType;
  DateTime get startTime;
  DateTime get endTime;
  @JsonKey(ignore: true)
  _$GetDuringDayStartedCopyWith<_GetDuringDayStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChartItemsLoadedCopyWith<$Res> {
  factory _$ChartItemsLoadedCopyWith(
          _ChartItemsLoaded value, $Res Function(_ChartItemsLoaded) then) =
      __$ChartItemsLoadedCopyWithImpl<$Res>;
  $Res call({List<ChartItem> chartItems});
}

/// @nodoc
class __$ChartItemsLoadedCopyWithImpl<$Res>
    extends _$StatisticChartEventCopyWithImpl<$Res>
    implements _$ChartItemsLoadedCopyWith<$Res> {
  __$ChartItemsLoadedCopyWithImpl(
      _ChartItemsLoaded _value, $Res Function(_ChartItemsLoaded) _then)
      : super(_value, (v) => _then(v as _ChartItemsLoaded));

  @override
  _ChartItemsLoaded get _value => super._value as _ChartItemsLoaded;

  @override
  $Res call({
    Object? chartItems = freezed,
  }) {
    return _then(_ChartItemsLoaded(
      chartItems == freezed
          ? _value.chartItems
          : chartItems // ignore: cast_nullable_to_non_nullable
              as List<ChartItem>,
    ));
  }
}

/// @nodoc

class _$_ChartItemsLoaded implements _ChartItemsLoaded {
  const _$_ChartItemsLoaded(this.chartItems);

  @override
  final List<ChartItem> chartItems;

  @override
  String toString() {
    return 'StatisticChartEvent.chartItemsLoaded(chartItems: $chartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChartItemsLoaded &&
            const DeepCollectionEquality()
                .equals(other.chartItems, chartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chartItems));

  @JsonKey(ignore: true)
  @override
  _$ChartItemsLoadedCopyWith<_ChartItemsLoaded> get copyWith =>
      __$ChartItemsLoadedCopyWithImpl<_ChartItemsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function(String amountTypeStr) amountTypeChanged,
    required TResult Function(String amountType, DateTime dateTime)
        getSingleDayStarted,
    required TResult Function(
            String amountType, DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<ChartItem> chartItems) chartItemsLoaded,
  }) {
    return chartItemsLoaded(chartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
  }) {
    return chartItemsLoaded?.call(chartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function(String amountTypeStr)? amountTypeChanged,
    TResult Function(String amountType, DateTime dateTime)? getSingleDayStarted,
    TResult Function(String amountType, DateTime startTime, DateTime endTime)?
        getDuringDayStarted,
    TResult Function(List<ChartItem> chartItems)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (chartItemsLoaded != null) {
      return chartItemsLoaded(chartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AmountTypeChanged value) amountTypeChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_ChartItemsLoaded value) chartItemsLoaded,
  }) {
    return chartItemsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
  }) {
    return chartItemsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AmountTypeChanged value)? amountTypeChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_ChartItemsLoaded value)? chartItemsLoaded,
    required TResult orElse(),
  }) {
    if (chartItemsLoaded != null) {
      return chartItemsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ChartItemsLoaded implements StatisticChartEvent {
  const factory _ChartItemsLoaded(List<ChartItem> chartItems) =
      _$_ChartItemsLoaded;

  List<ChartItem> get chartItems;
  @JsonKey(ignore: true)
  _$ChartItemsLoadedCopyWith<_ChartItemsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StatisticChartStateTearOff {
  const _$StatisticChartStateTearOff();

  _StatisticChartState call(
      {required LoadState loadState,
      required String amountType,
      required List<ChartItem> chartItems,
      required DateTime dateTime,
      required Account account}) {
    return _StatisticChartState(
      loadState: loadState,
      amountType: amountType,
      chartItems: chartItems,
      dateTime: dateTime,
      account: account,
    );
  }
}

/// @nodoc
const $StatisticChartState = _$StatisticChartStateTearOff();

/// @nodoc
mixin _$StatisticChartState {
  LoadState get loadState => throw _privateConstructorUsedError;
  String get amountType => throw _privateConstructorUsedError;
  List<ChartItem> get chartItems => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;

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
      {LoadState loadState,
      String amountType,
      List<ChartItem> chartItems,
      DateTime dateTime,
      Account account});

  $LoadStateCopyWith<$Res> get loadState;
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
    Object? loadState = freezed,
    Object? amountType = freezed,
    Object? chartItems = freezed,
    Object? dateTime = freezed,
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      loadState: loadState == freezed
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as LoadState,
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
    ));
  }

  @override
  $LoadStateCopyWith<$Res> get loadState {
    return $LoadStateCopyWith<$Res>(_value.loadState, (value) {
      return _then(_value.copyWith(loadState: value));
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
      {LoadState loadState,
      String amountType,
      List<ChartItem> chartItems,
      DateTime dateTime,
      Account account});

  @override
  $LoadStateCopyWith<$Res> get loadState;
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
    Object? loadState = freezed,
    Object? amountType = freezed,
    Object? chartItems = freezed,
    Object? dateTime = freezed,
    Object? account = freezed,
  }) {
    return _then(_StatisticChartState(
      loadState: loadState == freezed
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as LoadState,
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
    ));
  }
}

/// @nodoc

class _$_StatisticChartState implements _StatisticChartState {
  const _$_StatisticChartState(
      {required this.loadState,
      required this.amountType,
      required this.chartItems,
      required this.dateTime,
      required this.account});

  @override
  final LoadState loadState;
  @override
  final String amountType;
  @override
  final List<ChartItem> chartItems;
  @override
  final DateTime dateTime;
  @override
  final Account account;

  @override
  String toString() {
    return 'StatisticChartState(loadState: $loadState, amountType: $amountType, chartItems: $chartItems, dateTime: $dateTime, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatisticChartState &&
            const DeepCollectionEquality().equals(other.loadState, loadState) &&
            const DeepCollectionEquality()
                .equals(other.amountType, amountType) &&
            const DeepCollectionEquality()
                .equals(other.chartItems, chartItems) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.account, account));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loadState),
      const DeepCollectionEquality().hash(amountType),
      const DeepCollectionEquality().hash(chartItems),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(account));

  @JsonKey(ignore: true)
  @override
  _$StatisticChartStateCopyWith<_StatisticChartState> get copyWith =>
      __$StatisticChartStateCopyWithImpl<_StatisticChartState>(
          this, _$identity);
}

abstract class _StatisticChartState implements StatisticChartState {
  const factory _StatisticChartState(
      {required LoadState loadState,
      required String amountType,
      required List<ChartItem> chartItems,
      required DateTime dateTime,
      required Account account}) = _$_StatisticChartState;

  @override
  LoadState get loadState;
  @override
  String get amountType;
  @override
  List<ChartItem> get chartItems;
  @override
  DateTime get dateTime;
  @override
  Account get account;
  @override
  @JsonKey(ignore: true)
  _$StatisticChartStateCopyWith<_StatisticChartState> get copyWith =>
      throw _privateConstructorUsedError;
}
