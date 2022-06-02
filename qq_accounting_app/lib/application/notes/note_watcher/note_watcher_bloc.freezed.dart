// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteWatcherEventTearOff {
  const _$NoteWatcherEventTearOff();

  _SelectedAccount selectedAccount(Account account) {
    return _SelectedAccount(
      account,
    );
  }

  _OnDaySelected onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    return _OnDaySelected(
      selectedDay,
      focusedDay,
    );
  }

  _OnRangeSelected onRangeSelected(
      DateTime? startTime, DateTime? endTime, DateTime focusedDay) {
    return _OnRangeSelected(
      startTime,
      endTime,
      focusedDay,
    );
  }

  _OnFormatChanged onFormatChanged(dynamic format) {
    return _OnFormatChanged(
      format,
    );
  }

  _GetSingleDayStarted getSingleDayStarted(DateTime dateTime) {
    return _GetSingleDayStarted(
      dateTime,
    );
  }

  _GetDuringDayStarted getDuringDayStarted(
      DateTime startTime, DateTime endTime) {
    return _GetDuringDayStarted(
      startTime,
      endTime,
    );
  }

  _NotesReceived notesReceived(List<Note> notes) {
    return _NotesReceived(
      notes,
    );
  }
}

/// @nodoc
const $NoteWatcherEvent = _$NoteWatcherEventTearOff();

/// @nodoc
mixin _$NoteWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        onDaySelected,
    required TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)
        onRangeSelected,
    required TResult Function(dynamic format) onFormatChanged,
    required TResult Function(DateTime dateTime) getSingleDayStarted,
    required TResult Function(DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<Note> notes) notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_OnDaySelected value) onDaySelected,
    required TResult Function(_OnRangeSelected value) onRangeSelected,
    required TResult Function(_OnFormatChanged value) onFormatChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteWatcherEventCopyWith<$Res> {
  factory $NoteWatcherEventCopyWith(
          NoteWatcherEvent value, $Res Function(NoteWatcherEvent) then) =
      _$NoteWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteWatcherEventCopyWithImpl<$Res>
    implements $NoteWatcherEventCopyWith<$Res> {
  _$NoteWatcherEventCopyWithImpl(this._value, this._then);

  final NoteWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NoteWatcherEvent) _then;
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
    extends _$NoteWatcherEventCopyWithImpl<$Res>
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
    return 'NoteWatcherEvent.selectedAccount(account: $account)';
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
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        onDaySelected,
    required TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)
        onRangeSelected,
    required TResult Function(dynamic format) onFormatChanged,
    required TResult Function(DateTime dateTime) getSingleDayStarted,
    required TResult Function(DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<Note> notes) notesReceived,
  }) {
    return selectedAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
  }) {
    return selectedAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
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
    required TResult Function(_OnDaySelected value) onDaySelected,
    required TResult Function(_OnRangeSelected value) onRangeSelected,
    required TResult Function(_OnFormatChanged value) onFormatChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return selectedAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return selectedAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (selectedAccount != null) {
      return selectedAccount(this);
    }
    return orElse();
  }
}

abstract class _SelectedAccount implements NoteWatcherEvent {
  const factory _SelectedAccount(Account account) = _$_SelectedAccount;

  Account get account;
  @JsonKey(ignore: true)
  _$SelectedAccountCopyWith<_SelectedAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnDaySelectedCopyWith<$Res> {
  factory _$OnDaySelectedCopyWith(
          _OnDaySelected value, $Res Function(_OnDaySelected) then) =
      __$OnDaySelectedCopyWithImpl<$Res>;
  $Res call({DateTime selectedDay, DateTime focusedDay});
}

/// @nodoc
class __$OnDaySelectedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$OnDaySelectedCopyWith<$Res> {
  __$OnDaySelectedCopyWithImpl(
      _OnDaySelected _value, $Res Function(_OnDaySelected) _then)
      : super(_value, (v) => _then(v as _OnDaySelected));

  @override
  _OnDaySelected get _value => super._value as _OnDaySelected;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
  }) {
    return _then(_OnDaySelected(
      selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_OnDaySelected implements _OnDaySelected {
  const _$_OnDaySelected(this.selectedDay, this.focusedDay);

  @override
  final DateTime selectedDay;
  @override
  final DateTime focusedDay;

  @override
  String toString() {
    return 'NoteWatcherEvent.onDaySelected(selectedDay: $selectedDay, focusedDay: $focusedDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnDaySelected &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(focusedDay));

  @JsonKey(ignore: true)
  @override
  _$OnDaySelectedCopyWith<_OnDaySelected> get copyWith =>
      __$OnDaySelectedCopyWithImpl<_OnDaySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        onDaySelected,
    required TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)
        onRangeSelected,
    required TResult Function(dynamic format) onFormatChanged,
    required TResult Function(DateTime dateTime) getSingleDayStarted,
    required TResult Function(DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<Note> notes) notesReceived,
  }) {
    return onDaySelected(selectedDay, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
  }) {
    return onDaySelected?.call(selectedDay, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
    required TResult orElse(),
  }) {
    if (onDaySelected != null) {
      return onDaySelected(selectedDay, focusedDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_OnDaySelected value) onDaySelected,
    required TResult Function(_OnRangeSelected value) onRangeSelected,
    required TResult Function(_OnFormatChanged value) onFormatChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return onDaySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return onDaySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (onDaySelected != null) {
      return onDaySelected(this);
    }
    return orElse();
  }
}

abstract class _OnDaySelected implements NoteWatcherEvent {
  const factory _OnDaySelected(DateTime selectedDay, DateTime focusedDay) =
      _$_OnDaySelected;

  DateTime get selectedDay;
  DateTime get focusedDay;
  @JsonKey(ignore: true)
  _$OnDaySelectedCopyWith<_OnDaySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnRangeSelectedCopyWith<$Res> {
  factory _$OnRangeSelectedCopyWith(
          _OnRangeSelected value, $Res Function(_OnRangeSelected) then) =
      __$OnRangeSelectedCopyWithImpl<$Res>;
  $Res call({DateTime? startTime, DateTime? endTime, DateTime focusedDay});
}

/// @nodoc
class __$OnRangeSelectedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$OnRangeSelectedCopyWith<$Res> {
  __$OnRangeSelectedCopyWithImpl(
      _OnRangeSelected _value, $Res Function(_OnRangeSelected) _then)
      : super(_value, (v) => _then(v as _OnRangeSelected));

  @override
  _OnRangeSelected get _value => super._value as _OnRangeSelected;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? focusedDay = freezed,
  }) {
    return _then(_OnRangeSelected(
      startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_OnRangeSelected implements _OnRangeSelected {
  const _$_OnRangeSelected(this.startTime, this.endTime, this.focusedDay);

  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final DateTime focusedDay;

  @override
  String toString() {
    return 'NoteWatcherEvent.onRangeSelected(startTime: $startTime, endTime: $endTime, focusedDay: $focusedDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnRangeSelected &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(focusedDay));

  @JsonKey(ignore: true)
  @override
  _$OnRangeSelectedCopyWith<_OnRangeSelected> get copyWith =>
      __$OnRangeSelectedCopyWithImpl<_OnRangeSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        onDaySelected,
    required TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)
        onRangeSelected,
    required TResult Function(dynamic format) onFormatChanged,
    required TResult Function(DateTime dateTime) getSingleDayStarted,
    required TResult Function(DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<Note> notes) notesReceived,
  }) {
    return onRangeSelected(startTime, endTime, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
  }) {
    return onRangeSelected?.call(startTime, endTime, focusedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
    required TResult orElse(),
  }) {
    if (onRangeSelected != null) {
      return onRangeSelected(startTime, endTime, focusedDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_OnDaySelected value) onDaySelected,
    required TResult Function(_OnRangeSelected value) onRangeSelected,
    required TResult Function(_OnFormatChanged value) onFormatChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return onRangeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return onRangeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (onRangeSelected != null) {
      return onRangeSelected(this);
    }
    return orElse();
  }
}

abstract class _OnRangeSelected implements NoteWatcherEvent {
  const factory _OnRangeSelected(
          DateTime? startTime, DateTime? endTime, DateTime focusedDay) =
      _$_OnRangeSelected;

  DateTime? get startTime;
  DateTime? get endTime;
  DateTime get focusedDay;
  @JsonKey(ignore: true)
  _$OnRangeSelectedCopyWith<_OnRangeSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnFormatChangedCopyWith<$Res> {
  factory _$OnFormatChangedCopyWith(
          _OnFormatChanged value, $Res Function(_OnFormatChanged) then) =
      __$OnFormatChangedCopyWithImpl<$Res>;
  $Res call({dynamic format});
}

/// @nodoc
class __$OnFormatChangedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$OnFormatChangedCopyWith<$Res> {
  __$OnFormatChangedCopyWithImpl(
      _OnFormatChanged _value, $Res Function(_OnFormatChanged) _then)
      : super(_value, (v) => _then(v as _OnFormatChanged));

  @override
  _OnFormatChanged get _value => super._value as _OnFormatChanged;

  @override
  $Res call({
    Object? format = freezed,
  }) {
    return _then(_OnFormatChanged(
      format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_OnFormatChanged implements _OnFormatChanged {
  const _$_OnFormatChanged(this.format);

  @override
  final dynamic format;

  @override
  String toString() {
    return 'NoteWatcherEvent.onFormatChanged(format: $format)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnFormatChanged &&
            const DeepCollectionEquality().equals(other.format, format));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(format));

  @JsonKey(ignore: true)
  @override
  _$OnFormatChangedCopyWith<_OnFormatChanged> get copyWith =>
      __$OnFormatChangedCopyWithImpl<_OnFormatChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        onDaySelected,
    required TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)
        onRangeSelected,
    required TResult Function(dynamic format) onFormatChanged,
    required TResult Function(DateTime dateTime) getSingleDayStarted,
    required TResult Function(DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<Note> notes) notesReceived,
  }) {
    return onFormatChanged(format);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
  }) {
    return onFormatChanged?.call(format);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
    required TResult orElse(),
  }) {
    if (onFormatChanged != null) {
      return onFormatChanged(format);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_OnDaySelected value) onDaySelected,
    required TResult Function(_OnRangeSelected value) onRangeSelected,
    required TResult Function(_OnFormatChanged value) onFormatChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return onFormatChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return onFormatChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (onFormatChanged != null) {
      return onFormatChanged(this);
    }
    return orElse();
  }
}

abstract class _OnFormatChanged implements NoteWatcherEvent {
  const factory _OnFormatChanged(dynamic format) = _$_OnFormatChanged;

  dynamic get format;
  @JsonKey(ignore: true)
  _$OnFormatChangedCopyWith<_OnFormatChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetSingleDayStartedCopyWith<$Res> {
  factory _$GetSingleDayStartedCopyWith(_GetSingleDayStarted value,
          $Res Function(_GetSingleDayStarted) then) =
      __$GetSingleDayStartedCopyWithImpl<$Res>;
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$GetSingleDayStartedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$GetSingleDayStartedCopyWith<$Res> {
  __$GetSingleDayStartedCopyWithImpl(
      _GetSingleDayStarted _value, $Res Function(_GetSingleDayStarted) _then)
      : super(_value, (v) => _then(v as _GetSingleDayStarted));

  @override
  _GetSingleDayStarted get _value => super._value as _GetSingleDayStarted;

  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_GetSingleDayStarted(
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_GetSingleDayStarted implements _GetSingleDayStarted {
  const _$_GetSingleDayStarted(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'NoteWatcherEvent.getSingleDayStarted(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSingleDayStarted &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$GetSingleDayStartedCopyWith<_GetSingleDayStarted> get copyWith =>
      __$GetSingleDayStartedCopyWithImpl<_GetSingleDayStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        onDaySelected,
    required TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)
        onRangeSelected,
    required TResult Function(dynamic format) onFormatChanged,
    required TResult Function(DateTime dateTime) getSingleDayStarted,
    required TResult Function(DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<Note> notes) notesReceived,
  }) {
    return getSingleDayStarted(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
  }) {
    return getSingleDayStarted?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
    required TResult orElse(),
  }) {
    if (getSingleDayStarted != null) {
      return getSingleDayStarted(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_OnDaySelected value) onDaySelected,
    required TResult Function(_OnRangeSelected value) onRangeSelected,
    required TResult Function(_OnFormatChanged value) onFormatChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return getSingleDayStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return getSingleDayStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (getSingleDayStarted != null) {
      return getSingleDayStarted(this);
    }
    return orElse();
  }
}

abstract class _GetSingleDayStarted implements NoteWatcherEvent {
  const factory _GetSingleDayStarted(DateTime dateTime) =
      _$_GetSingleDayStarted;

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
  $Res call({DateTime startTime, DateTime endTime});
}

/// @nodoc
class __$GetDuringDayStartedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$GetDuringDayStartedCopyWith<$Res> {
  __$GetDuringDayStartedCopyWithImpl(
      _GetDuringDayStarted _value, $Res Function(_GetDuringDayStarted) _then)
      : super(_value, (v) => _then(v as _GetDuringDayStarted));

  @override
  _GetDuringDayStarted get _value => super._value as _GetDuringDayStarted;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_GetDuringDayStarted(
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
  const _$_GetDuringDayStarted(this.startTime, this.endTime);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'NoteWatcherEvent.getDuringDayStarted(startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetDuringDayStarted &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
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
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        onDaySelected,
    required TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)
        onRangeSelected,
    required TResult Function(dynamic format) onFormatChanged,
    required TResult Function(DateTime dateTime) getSingleDayStarted,
    required TResult Function(DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<Note> notes) notesReceived,
  }) {
    return getDuringDayStarted(startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
  }) {
    return getDuringDayStarted?.call(startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
    required TResult orElse(),
  }) {
    if (getDuringDayStarted != null) {
      return getDuringDayStarted(startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_OnDaySelected value) onDaySelected,
    required TResult Function(_OnRangeSelected value) onRangeSelected,
    required TResult Function(_OnFormatChanged value) onFormatChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return getDuringDayStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return getDuringDayStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (getDuringDayStarted != null) {
      return getDuringDayStarted(this);
    }
    return orElse();
  }
}

abstract class _GetDuringDayStarted implements NoteWatcherEvent {
  const factory _GetDuringDayStarted(DateTime startTime, DateTime endTime) =
      _$_GetDuringDayStarted;

  DateTime get startTime;
  DateTime get endTime;
  @JsonKey(ignore: true)
  _$GetDuringDayStartedCopyWith<_GetDuringDayStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotesReceivedCopyWith<$Res> {
  factory _$NotesReceivedCopyWith(
          _NotesReceived value, $Res Function(_NotesReceived) then) =
      __$NotesReceivedCopyWithImpl<$Res>;
  $Res call({List<Note> notes});
}

/// @nodoc
class __$NotesReceivedCopyWithImpl<$Res>
    extends _$NoteWatcherEventCopyWithImpl<$Res>
    implements _$NotesReceivedCopyWith<$Res> {
  __$NotesReceivedCopyWithImpl(
      _NotesReceived _value, $Res Function(_NotesReceived) _then)
      : super(_value, (v) => _then(v as _NotesReceived));

  @override
  _NotesReceived get _value => super._value as _NotesReceived;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_NotesReceived(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$_NotesReceived implements _NotesReceived {
  const _$_NotesReceived(this.notes);

  @override
  final List<Note> notes;

  @override
  String toString() {
    return 'NoteWatcherEvent.notesReceived(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotesReceived &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  _$NotesReceivedCopyWith<_NotesReceived> get copyWith =>
      __$NotesReceivedCopyWithImpl<_NotesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) selectedAccount,
    required TResult Function(DateTime selectedDay, DateTime focusedDay)
        onDaySelected,
    required TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)
        onRangeSelected,
    required TResult Function(dynamic format) onFormatChanged,
    required TResult Function(DateTime dateTime) getSingleDayStarted,
    required TResult Function(DateTime startTime, DateTime endTime)
        getDuringDayStarted,
    required TResult Function(List<Note> notes) notesReceived,
  }) {
    return notesReceived(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
  }) {
    return notesReceived?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? selectedAccount,
    TResult Function(DateTime selectedDay, DateTime focusedDay)? onDaySelected,
    TResult Function(
            DateTime? startTime, DateTime? endTime, DateTime focusedDay)?
        onRangeSelected,
    TResult Function(dynamic format)? onFormatChanged,
    TResult Function(DateTime dateTime)? getSingleDayStarted,
    TResult Function(DateTime startTime, DateTime endTime)? getDuringDayStarted,
    TResult Function(List<Note> notes)? notesReceived,
    required TResult orElse(),
  }) {
    if (notesReceived != null) {
      return notesReceived(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedAccount value) selectedAccount,
    required TResult Function(_OnDaySelected value) onDaySelected,
    required TResult Function(_OnRangeSelected value) onRangeSelected,
    required TResult Function(_OnFormatChanged value) onFormatChanged,
    required TResult Function(_GetSingleDayStarted value) getSingleDayStarted,
    required TResult Function(_GetDuringDayStarted value) getDuringDayStarted,
    required TResult Function(_NotesReceived value) notesReceived,
  }) {
    return notesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
  }) {
    return notesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedAccount value)? selectedAccount,
    TResult Function(_OnDaySelected value)? onDaySelected,
    TResult Function(_OnRangeSelected value)? onRangeSelected,
    TResult Function(_OnFormatChanged value)? onFormatChanged,
    TResult Function(_GetSingleDayStarted value)? getSingleDayStarted,
    TResult Function(_GetDuringDayStarted value)? getDuringDayStarted,
    TResult Function(_NotesReceived value)? notesReceived,
    required TResult orElse(),
  }) {
    if (notesReceived != null) {
      return notesReceived(this);
    }
    return orElse();
  }
}

abstract class _NotesReceived implements NoteWatcherEvent {
  const factory _NotesReceived(List<Note> notes) = _$_NotesReceived;

  List<Note> get notes;
  @JsonKey(ignore: true)
  _$NotesReceivedCopyWith<_NotesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NoteWatcherStateTearOff {
  const _$NoteWatcherStateTearOff();

  _NoteWatcherState call(
      {required LoadState loadState,
      required Account account,
      required List<Note> notes,
      required int dailyIncomeAmount,
      required int dailyExpenseAmount,
      required int dailyNetAmount,
      required CalendarFormat calendarFormat,
      required RangeSelectionMode rangeSelectionMode,
      required DateTime focusedDay,
      required DateTime? selectedDay,
      required DateTime? rangeStart,
      required DateTime? rangeEnd}) {
    return _NoteWatcherState(
      loadState: loadState,
      account: account,
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
    );
  }
}

/// @nodoc
const $NoteWatcherState = _$NoteWatcherStateTearOff();

/// @nodoc
mixin _$NoteWatcherState {
  LoadState get loadState =>
      throw _privateConstructorUsedError; // required DateTime dateTime,
  Account get account => throw _privateConstructorUsedError;
  List<Note> get notes => throw _privateConstructorUsedError;
  int get dailyIncomeAmount => throw _privateConstructorUsedError;
  int get dailyExpenseAmount => throw _privateConstructorUsedError;
  int get dailyNetAmount => throw _privateConstructorUsedError; // 月曆
  CalendarFormat get calendarFormat => throw _privateConstructorUsedError;
  RangeSelectionMode get rangeSelectionMode =>
      throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  DateTime? get selectedDay =>
      throw _privateConstructorUsedError; // required List<Note> notes,
  DateTime? get rangeStart => throw _privateConstructorUsedError;
  DateTime? get rangeEnd => throw _privateConstructorUsedError;

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
      {LoadState loadState,
      Account account,
      List<Note> notes,
      int dailyIncomeAmount,
      int dailyExpenseAmount,
      int dailyNetAmount,
      CalendarFormat calendarFormat,
      RangeSelectionMode rangeSelectionMode,
      DateTime focusedDay,
      DateTime? selectedDay,
      DateTime? rangeStart,
      DateTime? rangeEnd});

  $LoadStateCopyWith<$Res> get loadState;
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
    Object? loadState = freezed,
    Object? account = freezed,
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
  }) {
    return _then(_value.copyWith(
      loadState: loadState == freezed
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as LoadState,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
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
abstract class _$NoteWatcherStateCopyWith<$Res>
    implements $NoteWatcherStateCopyWith<$Res> {
  factory _$NoteWatcherStateCopyWith(
          _NoteWatcherState value, $Res Function(_NoteWatcherState) then) =
      __$NoteWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoadState loadState,
      Account account,
      List<Note> notes,
      int dailyIncomeAmount,
      int dailyExpenseAmount,
      int dailyNetAmount,
      CalendarFormat calendarFormat,
      RangeSelectionMode rangeSelectionMode,
      DateTime focusedDay,
      DateTime? selectedDay,
      DateTime? rangeStart,
      DateTime? rangeEnd});

  @override
  $LoadStateCopyWith<$Res> get loadState;
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
    Object? loadState = freezed,
    Object? account = freezed,
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
  }) {
    return _then(_NoteWatcherState(
      loadState: loadState == freezed
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as LoadState,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
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
    ));
  }
}

/// @nodoc

class _$_NoteWatcherState implements _NoteWatcherState {
  const _$_NoteWatcherState(
      {required this.loadState,
      required this.account,
      required this.notes,
      required this.dailyIncomeAmount,
      required this.dailyExpenseAmount,
      required this.dailyNetAmount,
      required this.calendarFormat,
      required this.rangeSelectionMode,
      required this.focusedDay,
      required this.selectedDay,
      required this.rangeStart,
      required this.rangeEnd});

  @override
  final LoadState loadState;
  @override // required DateTime dateTime,
  final Account account;
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
  @override // required List<Note> notes,
  final DateTime? rangeStart;
  @override
  final DateTime? rangeEnd;

  @override
  String toString() {
    return 'NoteWatcherState(loadState: $loadState, account: $account, notes: $notes, dailyIncomeAmount: $dailyIncomeAmount, dailyExpenseAmount: $dailyExpenseAmount, dailyNetAmount: $dailyNetAmount, calendarFormat: $calendarFormat, rangeSelectionMode: $rangeSelectionMode, focusedDay: $focusedDay, selectedDay: $selectedDay, rangeStart: $rangeStart, rangeEnd: $rangeEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteWatcherState &&
            const DeepCollectionEquality().equals(other.loadState, loadState) &&
            const DeepCollectionEquality().equals(other.account, account) &&
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
            const DeepCollectionEquality().equals(other.rangeEnd, rangeEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loadState),
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(notes),
      const DeepCollectionEquality().hash(dailyIncomeAmount),
      const DeepCollectionEquality().hash(dailyExpenseAmount),
      const DeepCollectionEquality().hash(dailyNetAmount),
      const DeepCollectionEquality().hash(calendarFormat),
      const DeepCollectionEquality().hash(rangeSelectionMode),
      const DeepCollectionEquality().hash(focusedDay),
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(rangeStart),
      const DeepCollectionEquality().hash(rangeEnd));

  @JsonKey(ignore: true)
  @override
  _$NoteWatcherStateCopyWith<_NoteWatcherState> get copyWith =>
      __$NoteWatcherStateCopyWithImpl<_NoteWatcherState>(this, _$identity);
}

abstract class _NoteWatcherState implements NoteWatcherState {
  const factory _NoteWatcherState(
      {required LoadState loadState,
      required Account account,
      required List<Note> notes,
      required int dailyIncomeAmount,
      required int dailyExpenseAmount,
      required int dailyNetAmount,
      required CalendarFormat calendarFormat,
      required RangeSelectionMode rangeSelectionMode,
      required DateTime focusedDay,
      required DateTime? selectedDay,
      required DateTime? rangeStart,
      required DateTime? rangeEnd}) = _$_NoteWatcherState;

  @override
  LoadState get loadState;
  @override // required DateTime dateTime,
  Account get account;
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
  @override // required List<Note> notes,
  DateTime? get rangeStart;
  @override
  DateTime? get rangeEnd;
  @override
  @JsonKey(ignore: true)
  _$NoteWatcherStateCopyWith<_NoteWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
