// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountWatcherStateTearOff {
  const _$AccountWatcherStateTearOff();

  _AccountWatcherState call(
      {required LoadStatus status, List<Account> accounts = const []}) {
    return _AccountWatcherState(
      status: status,
      accounts: accounts,
    );
  }
}

/// @nodoc
const $AccountWatcherState = _$AccountWatcherStateTearOff();

/// @nodoc
mixin _$AccountWatcherState {
  LoadStatus get status => throw _privateConstructorUsedError;
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
  $Res call({LoadStatus status, List<Account> accounts});

  $LoadStatusCopyWith<$Res> get status;
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
    Object? status = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }

  @override
  $LoadStatusCopyWith<$Res> get status {
    return $LoadStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
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
  $Res call({LoadStatus status, List<Account> accounts});

  @override
  $LoadStatusCopyWith<$Res> get status;
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
    Object? status = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_AccountWatcherState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_AccountWatcherState extends _AccountWatcherState {
  const _$_AccountWatcherState({required this.status, this.accounts = const []})
      : super._();

  @override
  final LoadStatus status;
  @JsonKey()
  @override
  final List<Account> accounts;

  @override
  String toString() {
    return 'AccountWatcherState(status: $status, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountWatcherState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.accounts, accounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(accounts));

  @JsonKey(ignore: true)
  @override
  _$AccountWatcherStateCopyWith<_AccountWatcherState> get copyWith =>
      __$AccountWatcherStateCopyWithImpl<_AccountWatcherState>(
          this, _$identity);
}

abstract class _AccountWatcherState extends AccountWatcherState {
  const factory _AccountWatcherState(
      {required LoadStatus status,
      List<Account> accounts}) = _$_AccountWatcherState;
  const _AccountWatcherState._() : super._();

  @override
  LoadStatus get status;
  @override
  List<Account> get accounts;
  @override
  @JsonKey(ignore: true)
  _$AccountWatcherStateCopyWith<_AccountWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
