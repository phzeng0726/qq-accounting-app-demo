// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountFormEventTearOff {
  const _$AccountFormEventTearOff();

  _Initialized initialized(Account initialAccount, bool isEditing) {
    return _Initialized(
      initialAccount,
      isEditing,
    );
  }

  _TitleChanged titleChanged(String titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

  _CurrencyTypeChanged currencyTypeChanged(String currencyTypeStr) {
    return _CurrencyTypeChanged(
      currencyTypeStr,
    );
  }

  _TempAmountChanged tempAmountChanged(String amountStr) {
    return _TempAmountChanged(
      amountStr,
    );
  }

  _InitialAmountChanged initialAmountSaved(String initialAmountStr) {
    return _InitialAmountChanged(
      initialAmountStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $AccountFormEvent = _$AccountFormEventTearOff();

/// @nodoc
mixin _$AccountFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account initialAccount, bool isEditing)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String currencyTypeStr) currencyTypeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String initialAmountStr) initialAmountSaved,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CurrencyTypeChanged value) currencyTypeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_InitialAmountChanged value) initialAmountSaved,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountFormEventCopyWith<$Res> {
  factory $AccountFormEventCopyWith(
          AccountFormEvent value, $Res Function(AccountFormEvent) then) =
      _$AccountFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountFormEventCopyWithImpl<$Res>
    implements $AccountFormEventCopyWith<$Res> {
  _$AccountFormEventCopyWithImpl(this._value, this._then);

  final AccountFormEvent _value;
  // ignore: unused_field
  final $Res Function(AccountFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Account initialAccount, bool isEditing});

  $AccountCopyWith<$Res> get initialAccount;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialAccount = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_Initialized(
      initialAccount == freezed
          ? _value.initialAccount
          : initialAccount // ignore: cast_nullable_to_non_nullable
              as Account,
      isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AccountCopyWith<$Res> get initialAccount {
    return $AccountCopyWith<$Res>(_value.initialAccount, (value) {
      return _then(_value.copyWith(initialAccount: value));
    });
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialAccount, this.isEditing);

  @override
  final Account initialAccount;
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'AccountFormEvent.initialized(initialAccount: $initialAccount, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialAccount, initialAccount) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialAccount),
      const DeepCollectionEquality().hash(isEditing));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account initialAccount, bool isEditing)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String currencyTypeStr) currencyTypeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String initialAmountStr) initialAmountSaved,
    required TResult Function() saved,
  }) {
    return initialized(initialAccount, isEditing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialAccount, isEditing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialAccount, isEditing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CurrencyTypeChanged value) currencyTypeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_InitialAmountChanged value) initialAmountSaved,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AccountFormEvent {
  const factory _Initialized(Account initialAccount, bool isEditing) =
      _$_Initialized;

  Account get initialAccount;
  bool get isEditing;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'AccountFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TitleChanged &&
            const DeepCollectionEquality().equals(other.titleStr, titleStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(titleStr));

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account initialAccount, bool isEditing)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String currencyTypeStr) currencyTypeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String initialAmountStr) initialAmountSaved,
    required TResult Function() saved,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
  }) {
    return titleChanged?.call(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CurrencyTypeChanged value) currencyTypeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_InitialAmountChanged value) initialAmountSaved,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements AccountFormEvent {
  const factory _TitleChanged(String titleStr) = _$_TitleChanged;

  String get titleStr;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CurrencyTypeChangedCopyWith<$Res> {
  factory _$CurrencyTypeChangedCopyWith(_CurrencyTypeChanged value,
          $Res Function(_CurrencyTypeChanged) then) =
      __$CurrencyTypeChangedCopyWithImpl<$Res>;
  $Res call({String currencyTypeStr});
}

/// @nodoc
class __$CurrencyTypeChangedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res>
    implements _$CurrencyTypeChangedCopyWith<$Res> {
  __$CurrencyTypeChangedCopyWithImpl(
      _CurrencyTypeChanged _value, $Res Function(_CurrencyTypeChanged) _then)
      : super(_value, (v) => _then(v as _CurrencyTypeChanged));

  @override
  _CurrencyTypeChanged get _value => super._value as _CurrencyTypeChanged;

  @override
  $Res call({
    Object? currencyTypeStr = freezed,
  }) {
    return _then(_CurrencyTypeChanged(
      currencyTypeStr == freezed
          ? _value.currencyTypeStr
          : currencyTypeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrencyTypeChanged implements _CurrencyTypeChanged {
  const _$_CurrencyTypeChanged(this.currencyTypeStr);

  @override
  final String currencyTypeStr;

  @override
  String toString() {
    return 'AccountFormEvent.currencyTypeChanged(currencyTypeStr: $currencyTypeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyTypeChanged &&
            const DeepCollectionEquality()
                .equals(other.currencyTypeStr, currencyTypeStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currencyTypeStr));

  @JsonKey(ignore: true)
  @override
  _$CurrencyTypeChangedCopyWith<_CurrencyTypeChanged> get copyWith =>
      __$CurrencyTypeChangedCopyWithImpl<_CurrencyTypeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account initialAccount, bool isEditing)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String currencyTypeStr) currencyTypeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String initialAmountStr) initialAmountSaved,
    required TResult Function() saved,
  }) {
    return currencyTypeChanged(currencyTypeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
  }) {
    return currencyTypeChanged?.call(currencyTypeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (currencyTypeChanged != null) {
      return currencyTypeChanged(currencyTypeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CurrencyTypeChanged value) currencyTypeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_InitialAmountChanged value) initialAmountSaved,
    required TResult Function(_Saved value) saved,
  }) {
    return currencyTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
  }) {
    return currencyTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (currencyTypeChanged != null) {
      return currencyTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _CurrencyTypeChanged implements AccountFormEvent {
  const factory _CurrencyTypeChanged(String currencyTypeStr) =
      _$_CurrencyTypeChanged;

  String get currencyTypeStr;
  @JsonKey(ignore: true)
  _$CurrencyTypeChangedCopyWith<_CurrencyTypeChanged> get copyWith =>
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
    extends _$AccountFormEventCopyWithImpl<$Res>
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
    return 'AccountFormEvent.tempAmountChanged(amountStr: $amountStr)';
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
    required TResult Function(Account initialAccount, bool isEditing)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String currencyTypeStr) currencyTypeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String initialAmountStr) initialAmountSaved,
    required TResult Function() saved,
  }) {
    return tempAmountChanged(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
  }) {
    return tempAmountChanged?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
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
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CurrencyTypeChanged value) currencyTypeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_InitialAmountChanged value) initialAmountSaved,
    required TResult Function(_Saved value) saved,
  }) {
    return tempAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
  }) {
    return tempAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (tempAmountChanged != null) {
      return tempAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _TempAmountChanged implements AccountFormEvent {
  const factory _TempAmountChanged(String amountStr) = _$_TempAmountChanged;

  String get amountStr;
  @JsonKey(ignore: true)
  _$TempAmountChangedCopyWith<_TempAmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialAmountChangedCopyWith<$Res> {
  factory _$InitialAmountChangedCopyWith(_InitialAmountChanged value,
          $Res Function(_InitialAmountChanged) then) =
      __$InitialAmountChangedCopyWithImpl<$Res>;
  $Res call({String initialAmountStr});
}

/// @nodoc
class __$InitialAmountChangedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res>
    implements _$InitialAmountChangedCopyWith<$Res> {
  __$InitialAmountChangedCopyWithImpl(
      _InitialAmountChanged _value, $Res Function(_InitialAmountChanged) _then)
      : super(_value, (v) => _then(v as _InitialAmountChanged));

  @override
  _InitialAmountChanged get _value => super._value as _InitialAmountChanged;

  @override
  $Res call({
    Object? initialAmountStr = freezed,
  }) {
    return _then(_InitialAmountChanged(
      initialAmountStr == freezed
          ? _value.initialAmountStr
          : initialAmountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialAmountChanged implements _InitialAmountChanged {
  const _$_InitialAmountChanged(this.initialAmountStr);

  @override
  final String initialAmountStr;

  @override
  String toString() {
    return 'AccountFormEvent.initialAmountSaved(initialAmountStr: $initialAmountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitialAmountChanged &&
            const DeepCollectionEquality()
                .equals(other.initialAmountStr, initialAmountStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialAmountStr));

  @JsonKey(ignore: true)
  @override
  _$InitialAmountChangedCopyWith<_InitialAmountChanged> get copyWith =>
      __$InitialAmountChangedCopyWithImpl<_InitialAmountChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account initialAccount, bool isEditing)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String currencyTypeStr) currencyTypeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String initialAmountStr) initialAmountSaved,
    required TResult Function() saved,
  }) {
    return initialAmountSaved(initialAmountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
  }) {
    return initialAmountSaved?.call(initialAmountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialAmountSaved != null) {
      return initialAmountSaved(initialAmountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CurrencyTypeChanged value) currencyTypeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_InitialAmountChanged value) initialAmountSaved,
    required TResult Function(_Saved value) saved,
  }) {
    return initialAmountSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
  }) {
    return initialAmountSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialAmountSaved != null) {
      return initialAmountSaved(this);
    }
    return orElse();
  }
}

abstract class _InitialAmountChanged implements AccountFormEvent {
  const factory _InitialAmountChanged(String initialAmountStr) =
      _$_InitialAmountChanged;

  String get initialAmountStr;
  @JsonKey(ignore: true)
  _$InitialAmountChangedCopyWith<_InitialAmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$AccountFormEventCopyWithImpl<$Res>
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
    return 'AccountFormEvent.saved()';
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
    required TResult Function(Account initialAccount, bool isEditing)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String currencyTypeStr) currencyTypeChanged,
    required TResult Function(String amountStr) tempAmountChanged,
    required TResult Function(String initialAmountStr) initialAmountSaved,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account initialAccount, bool isEditing)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String currencyTypeStr)? currencyTypeChanged,
    TResult Function(String amountStr)? tempAmountChanged,
    TResult Function(String initialAmountStr)? initialAmountSaved,
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
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CurrencyTypeChanged value) currencyTypeChanged,
    required TResult Function(_TempAmountChanged value) tempAmountChanged,
    required TResult Function(_InitialAmountChanged value) initialAmountSaved,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CurrencyTypeChanged value)? currencyTypeChanged,
    TResult Function(_TempAmountChanged value)? tempAmountChanged,
    TResult Function(_InitialAmountChanged value)? initialAmountSaved,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AccountFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$AccountFormStateTearOff {
  const _$AccountFormStateTearOff();

  _AccountFormState call(
      {required Account account,
      required String tempAmount,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving}) {
    return _AccountFormState(
      account: account,
      tempAmount: tempAmount,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
    );
  }
}

/// @nodoc
const $AccountFormState = _$AccountFormStateTearOff();

/// @nodoc
mixin _$AccountFormState {
  Account get account => throw _privateConstructorUsedError;
  String get tempAmount => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountFormStateCopyWith<AccountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountFormStateCopyWith<$Res> {
  factory $AccountFormStateCopyWith(
          AccountFormState value, $Res Function(AccountFormState) then) =
      _$AccountFormStateCopyWithImpl<$Res>;
  $Res call(
      {Account account,
      String tempAmount,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountFormStateCopyWithImpl<$Res>
    implements $AccountFormStateCopyWith<$Res> {
  _$AccountFormStateCopyWithImpl(this._value, this._then);

  final AccountFormState _value;
  // ignore: unused_field
  final $Res Function(AccountFormState) _then;

  @override
  $Res call({
    Object? account = freezed,
    Object? tempAmount = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
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
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$AccountFormStateCopyWith<$Res>
    implements $AccountFormStateCopyWith<$Res> {
  factory _$AccountFormStateCopyWith(
          _AccountFormState value, $Res Function(_AccountFormState) then) =
      __$AccountFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Account account,
      String tempAmount,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$AccountFormStateCopyWithImpl<$Res>
    extends _$AccountFormStateCopyWithImpl<$Res>
    implements _$AccountFormStateCopyWith<$Res> {
  __$AccountFormStateCopyWithImpl(
      _AccountFormState _value, $Res Function(_AccountFormState) _then)
      : super(_value, (v) => _then(v as _AccountFormState));

  @override
  _AccountFormState get _value => super._value as _AccountFormState;

  @override
  $Res call({
    Object? account = freezed,
    Object? tempAmount = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
  }) {
    return _then(_AccountFormState(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
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

class _$_AccountFormState implements _AccountFormState {
  const _$_AccountFormState(
      {required this.account,
      required this.tempAmount,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving});

  @override
  final Account account;
  @override
  final String tempAmount;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;

  @override
  String toString() {
    return 'AccountFormState(account: $account, tempAmount: $tempAmount, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountFormState &&
            const DeepCollectionEquality().equals(other.account, account) &&
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
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(tempAmount),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving));

  @JsonKey(ignore: true)
  @override
  _$AccountFormStateCopyWith<_AccountFormState> get copyWith =>
      __$AccountFormStateCopyWithImpl<_AccountFormState>(this, _$identity);
}

abstract class _AccountFormState implements AccountFormState {
  const factory _AccountFormState(
      {required Account account,
      required String tempAmount,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving}) = _$_AccountFormState;

  @override
  Account get account;
  @override
  String get tempAmount;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  @JsonKey(ignore: true)
  _$AccountFormStateCopyWith<_AccountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}