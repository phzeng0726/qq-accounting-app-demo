// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountWatcherEventTearOff {
  const _$AccountWatcherEventTearOff();

  _GetAllStarted getAllStarted() {
    return const _GetAllStarted();
  }

  _AccountsReceived accountsReceived(List<Account> accounts) {
    return _AccountsReceived(
      accounts,
    );
  }
}

/// @nodoc
const $AccountWatcherEvent = _$AccountWatcherEventTearOff();

/// @nodoc
mixin _$AccountWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStarted,
    required TResult Function(List<Account> accounts) accountsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllStarted,
    TResult Function(List<Account> accounts)? accountsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStarted,
    TResult Function(List<Account> accounts)? accountsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllStarted value) getAllStarted,
    required TResult Function(_AccountsReceived value) accountsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllStarted value)? getAllStarted,
    TResult Function(_AccountsReceived value)? accountsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllStarted value)? getAllStarted,
    TResult Function(_AccountsReceived value)? accountsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountWatcherEventCopyWith<$Res> {
  factory $AccountWatcherEventCopyWith(
          AccountWatcherEvent value, $Res Function(AccountWatcherEvent) then) =
      _$AccountWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountWatcherEventCopyWithImpl<$Res>
    implements $AccountWatcherEventCopyWith<$Res> {
  _$AccountWatcherEventCopyWithImpl(this._value, this._then);

  final AccountWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(AccountWatcherEvent) _then;
}

/// @nodoc
abstract class _$GetAllStartedCopyWith<$Res> {
  factory _$GetAllStartedCopyWith(
          _GetAllStarted value, $Res Function(_GetAllStarted) then) =
      __$GetAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllStartedCopyWithImpl<$Res>
    extends _$AccountWatcherEventCopyWithImpl<$Res>
    implements _$GetAllStartedCopyWith<$Res> {
  __$GetAllStartedCopyWithImpl(
      _GetAllStarted _value, $Res Function(_GetAllStarted) _then)
      : super(_value, (v) => _then(v as _GetAllStarted));

  @override
  _GetAllStarted get _value => super._value as _GetAllStarted;
}

/// @nodoc

class _$_GetAllStarted implements _GetAllStarted {
  const _$_GetAllStarted();

  @override
  String toString() {
    return 'AccountWatcherEvent.getAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStarted,
    required TResult Function(List<Account> accounts) accountsReceived,
  }) {
    return getAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllStarted,
    TResult Function(List<Account> accounts)? accountsReceived,
  }) {
    return getAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStarted,
    TResult Function(List<Account> accounts)? accountsReceived,
    required TResult orElse(),
  }) {
    if (getAllStarted != null) {
      return getAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllStarted value) getAllStarted,
    required TResult Function(_AccountsReceived value) accountsReceived,
  }) {
    return getAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllStarted value)? getAllStarted,
    TResult Function(_AccountsReceived value)? accountsReceived,
  }) {
    return getAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllStarted value)? getAllStarted,
    TResult Function(_AccountsReceived value)? accountsReceived,
    required TResult orElse(),
  }) {
    if (getAllStarted != null) {
      return getAllStarted(this);
    }
    return orElse();
  }
}

abstract class _GetAllStarted implements AccountWatcherEvent {
  const factory _GetAllStarted() = _$_GetAllStarted;
}

/// @nodoc
abstract class _$AccountsReceivedCopyWith<$Res> {
  factory _$AccountsReceivedCopyWith(
          _AccountsReceived value, $Res Function(_AccountsReceived) then) =
      __$AccountsReceivedCopyWithImpl<$Res>;
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$AccountsReceivedCopyWithImpl<$Res>
    extends _$AccountWatcherEventCopyWithImpl<$Res>
    implements _$AccountsReceivedCopyWith<$Res> {
  __$AccountsReceivedCopyWithImpl(
      _AccountsReceived _value, $Res Function(_AccountsReceived) _then)
      : super(_value, (v) => _then(v as _AccountsReceived));

  @override
  _AccountsReceived get _value => super._value as _AccountsReceived;

  @override
  $Res call({
    Object? accounts = freezed,
  }) {
    return _then(_AccountsReceived(
      accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_AccountsReceived implements _AccountsReceived {
  const _$_AccountsReceived(this.accounts);

  @override
  final List<Account> accounts;

  @override
  String toString() {
    return 'AccountWatcherEvent.accountsReceived(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountsReceived &&
            const DeepCollectionEquality().equals(other.accounts, accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(accounts));

  @JsonKey(ignore: true)
  @override
  _$AccountsReceivedCopyWith<_AccountsReceived> get copyWith =>
      __$AccountsReceivedCopyWithImpl<_AccountsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStarted,
    required TResult Function(List<Account> accounts) accountsReceived,
  }) {
    return accountsReceived(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllStarted,
    TResult Function(List<Account> accounts)? accountsReceived,
  }) {
    return accountsReceived?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStarted,
    TResult Function(List<Account> accounts)? accountsReceived,
    required TResult orElse(),
  }) {
    if (accountsReceived != null) {
      return accountsReceived(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllStarted value) getAllStarted,
    required TResult Function(_AccountsReceived value) accountsReceived,
  }) {
    return accountsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllStarted value)? getAllStarted,
    TResult Function(_AccountsReceived value)? accountsReceived,
  }) {
    return accountsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllStarted value)? getAllStarted,
    TResult Function(_AccountsReceived value)? accountsReceived,
    required TResult orElse(),
  }) {
    if (accountsReceived != null) {
      return accountsReceived(this);
    }
    return orElse();
  }
}

abstract class _AccountsReceived implements AccountWatcherEvent {
  const factory _AccountsReceived(List<Account> accounts) = _$_AccountsReceived;

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$AccountsReceivedCopyWith<_AccountsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AccountWatcherStateTearOff {
  const _$AccountWatcherStateTearOff();

  _AccountWatcherState call(
      {required LoadState loadState, required List<Account> accounts}) {
    return _AccountWatcherState(
      loadState: loadState,
      accounts: accounts,
    );
  }
}

/// @nodoc
const $AccountWatcherState = _$AccountWatcherStateTearOff();

/// @nodoc
mixin _$AccountWatcherState {
  LoadState get loadState => throw _privateConstructorUsedError;
  List<Account> get accounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountWatcherStateCopyWith<AccountWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountWatcherStateCopyWith<$Res> {
  factory $AccountWatcherStateCopyWith(
          AccountWatcherState value, $Res Function(AccountWatcherState) then) =
      _$AccountWatcherStateCopyWithImpl<$Res>;
  $Res call({LoadState loadState, List<Account> accounts});

  $LoadStateCopyWith<$Res> get loadState;
}

/// @nodoc
class _$AccountWatcherStateCopyWithImpl<$Res>
    implements $AccountWatcherStateCopyWith<$Res> {
  _$AccountWatcherStateCopyWithImpl(this._value, this._then);

  final AccountWatcherState _value;
  // ignore: unused_field
  final $Res Function(AccountWatcherState) _then;

  @override
  $Res call({
    Object? loadState = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_value.copyWith(
      loadState: loadState == freezed
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as LoadState,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }

  @override
  $LoadStateCopyWith<$Res> get loadState {
    return $LoadStateCopyWith<$Res>(_value.loadState, (value) {
      return _then(_value.copyWith(loadState: value));
    });
  }
}

/// @nodoc
abstract class _$AccountWatcherStateCopyWith<$Res>
    implements $AccountWatcherStateCopyWith<$Res> {
  factory _$AccountWatcherStateCopyWith(_AccountWatcherState value,
          $Res Function(_AccountWatcherState) then) =
      __$AccountWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call({LoadState loadState, List<Account> accounts});

  @override
  $LoadStateCopyWith<$Res> get loadState;
}

/// @nodoc
class __$AccountWatcherStateCopyWithImpl<$Res>
    extends _$AccountWatcherStateCopyWithImpl<$Res>
    implements _$AccountWatcherStateCopyWith<$Res> {
  __$AccountWatcherStateCopyWithImpl(
      _AccountWatcherState _value, $Res Function(_AccountWatcherState) _then)
      : super(_value, (v) => _then(v as _AccountWatcherState));

  @override
  _AccountWatcherState get _value => super._value as _AccountWatcherState;

  @override
  $Res call({
    Object? loadState = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_AccountWatcherState(
      loadState: loadState == freezed
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as LoadState,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_AccountWatcherState implements _AccountWatcherState {
  const _$_AccountWatcherState(
      {required this.loadState, required this.accounts});

  @override
  final LoadState loadState;
  @override
  final List<Account> accounts;

  @override
  String toString() {
    return 'AccountWatcherState(loadState: $loadState, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountWatcherState &&
            const DeepCollectionEquality().equals(other.loadState, loadState) &&
            const DeepCollectionEquality().equals(other.accounts, accounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loadState),
      const DeepCollectionEquality().hash(accounts));

  @JsonKey(ignore: true)
  @override
  _$AccountWatcherStateCopyWith<_AccountWatcherState> get copyWith =>
      __$AccountWatcherStateCopyWithImpl<_AccountWatcherState>(
          this, _$identity);
}

abstract class _AccountWatcherState implements AccountWatcherState {
  const factory _AccountWatcherState(
      {required LoadState loadState,
      required List<Account> accounts}) = _$_AccountWatcherState;

  @override
  LoadState get loadState;
  @override
  List<Account> get accounts;
  @override
  @JsonKey(ignore: true)
  _$AccountWatcherStateCopyWith<_AccountWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
