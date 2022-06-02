// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'load_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoadState _$LoadStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _LoadInitial.fromJson(json);
    case 'inProgress':
      return _LoadInProgress.fromJson(json);
    case 'failure':
      return _LoadFailure.fromJson(json);
    case 'success':
      return _LoadSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LoadState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$LoadStateTearOff {
  const _$LoadStateTearOff();

  _LoadInitial initial() {
    return const _LoadInitial();
  }

  _LoadInProgress inProgress() {
    return const _LoadInProgress();
  }

  _LoadFailure failure() {
    return const _LoadFailure();
  }

  _LoadSuccess success() {
    return const _LoadSuccess();
  }

  LoadState fromJson(Map<String, Object?> json) {
    return LoadState.fromJson(json);
  }
}

/// @nodoc
const $LoadState = _$LoadStateTearOff();

/// @nodoc
mixin _$LoadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failure,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) initial,
    required TResult Function(_LoadInProgress value) inProgress,
    required TResult Function(_LoadFailure value) failure,
    required TResult Function(_LoadSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadStateCopyWith<$Res> {
  factory $LoadStateCopyWith(LoadState value, $Res Function(LoadState) then) =
      _$LoadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadStateCopyWithImpl<$Res> implements $LoadStateCopyWith<$Res> {
  _$LoadStateCopyWithImpl(this._value, this._then);

  final LoadState _value;
  // ignore: unused_field
  final $Res Function(LoadState) _then;
}

/// @nodoc
abstract class _$LoadInitialCopyWith<$Res> {
  factory _$LoadInitialCopyWith(
          _LoadInitial value, $Res Function(_LoadInitial) then) =
      __$LoadInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInitialCopyWithImpl<$Res> extends _$LoadStateCopyWithImpl<$Res>
    implements _$LoadInitialCopyWith<$Res> {
  __$LoadInitialCopyWithImpl(
      _LoadInitial _value, $Res Function(_LoadInitial) _then)
      : super(_value, (v) => _then(v as _LoadInitial));

  @override
  _LoadInitial get _value => super._value as _LoadInitial;
}

/// @nodoc
@JsonSerializable()
class _$_LoadInitial implements _LoadInitial {
  const _$_LoadInitial({String? $type}) : $type = $type ?? 'initial';

  factory _$_LoadInitial.fromJson(Map<String, dynamic> json) =>
      _$$_LoadInitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoadState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failure,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) initial,
    required TResult Function(_LoadInProgress value) inProgress,
    required TResult Function(_LoadFailure value) failure,
    required TResult Function(_LoadSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadInitialToJson(this);
  }
}

abstract class _LoadInitial implements LoadState {
  const factory _LoadInitial() = _$_LoadInitial;

  factory _LoadInitial.fromJson(Map<String, dynamic> json) =
      _$_LoadInitial.fromJson;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$LoadStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
@JsonSerializable()
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress({String? $type}) : $type = $type ?? 'inProgress';

  factory _$_LoadInProgress.fromJson(Map<String, dynamic> json) =>
      _$$_LoadInProgressFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoadState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failure,
    required TResult Function() success,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) initial,
    required TResult Function(_LoadInProgress value) inProgress,
    required TResult Function(_LoadFailure value) failure,
    required TResult Function(_LoadSuccess value) success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadInProgressToJson(this);
  }
}

abstract class _LoadInProgress implements LoadState {
  const factory _LoadInProgress() = _$_LoadInProgress;

  factory _LoadInProgress.fromJson(Map<String, dynamic> json) =
      _$_LoadInProgress.fromJson;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$LoadStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

/// @nodoc
@JsonSerializable()
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure({String? $type}) : $type = $type ?? 'failure';

  factory _$_LoadFailure.fromJson(Map<String, dynamic> json) =>
      _$$_LoadFailureFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoadState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failure,
    required TResult Function() success,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) initial,
    required TResult Function(_LoadInProgress value) inProgress,
    required TResult Function(_LoadFailure value) failure,
    required TResult Function(_LoadSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadFailureToJson(this);
  }
}

abstract class _LoadFailure implements LoadState {
  const factory _LoadFailure() = _$_LoadFailure;

  factory _LoadFailure.fromJson(Map<String, dynamic> json) =
      _$_LoadFailure.fromJson;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$LoadStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
}

/// @nodoc
@JsonSerializable()
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess({String? $type}) : $type = $type ?? 'success';

  factory _$_LoadSuccess.fromJson(Map<String, dynamic> json) =>
      _$$_LoadSuccessFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoadState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() failure,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInitial value) initial,
    required TResult Function(_LoadInProgress value) inProgress,
    required TResult Function(_LoadFailure value) failure,
    required TResult Function(_LoadSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInitial value)? initial,
    TResult Function(_LoadInProgress value)? inProgress,
    TResult Function(_LoadFailure value)? failure,
    TResult Function(_LoadSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadSuccessToJson(this);
  }
}

abstract class _LoadSuccess implements LoadState {
  const factory _LoadSuccess() = _$_LoadSuccess;

  factory _LoadSuccess.fromJson(Map<String, dynamic> json) =
      _$_LoadSuccess.fromJson;
}
