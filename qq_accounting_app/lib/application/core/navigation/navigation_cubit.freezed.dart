// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

  _NavigationState call(
      {required LoadStatus loadStatus, required Type routeType}) {
    return _NavigationState(
      loadStatus: loadStatus,
      routeType: routeType,
    );
  }
}

/// @nodoc
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  LoadStatus get loadStatus => throw _privateConstructorUsedError;
  Type get routeType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({LoadStatus loadStatus, Type routeType});

  $LoadStatusCopyWith<$Res> get loadStatus;
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object? loadStatus = freezed,
    Object? routeType = freezed,
  }) {
    return _then(_value.copyWith(
      loadStatus: loadStatus == freezed
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      routeType: routeType == freezed
          ? _value.routeType
          : routeType // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }

  @override
  $LoadStatusCopyWith<$Res> get loadStatus {
    return $LoadStatusCopyWith<$Res>(_value.loadStatus, (value) {
      return _then(_value.copyWith(loadStatus: value));
    });
  }
}

/// @nodoc
abstract class _$NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(
          _NavigationState value, $Res Function(_NavigationState) then) =
      __$NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({LoadStatus loadStatus, Type routeType});

  @override
  $LoadStatusCopyWith<$Res> get loadStatus;
}

/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(
      _NavigationState _value, $Res Function(_NavigationState) _then)
      : super(_value, (v) => _then(v as _NavigationState));

  @override
  _NavigationState get _value => super._value as _NavigationState;

  @override
  $Res call({
    Object? loadStatus = freezed,
    Object? routeType = freezed,
  }) {
    return _then(_NavigationState(
      loadStatus: loadStatus == freezed
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      routeType: routeType == freezed
          ? _value.routeType
          : routeType // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  const _$_NavigationState({required this.loadStatus, required this.routeType});

  @override
  final LoadStatus loadStatus;
  @override
  final Type routeType;

  @override
  String toString() {
    return 'NavigationState(loadStatus: $loadStatus, routeType: $routeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NavigationState &&
            const DeepCollectionEquality()
                .equals(other.loadStatus, loadStatus) &&
            const DeepCollectionEquality().equals(other.routeType, routeType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loadStatus),
      const DeepCollectionEquality().hash(routeType));

  @JsonKey(ignore: true)
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {required LoadStatus loadStatus,
      required Type routeType}) = _$_NavigationState;

  @override
  LoadStatus get loadStatus;
  @override
  Type get routeType;
  @override
  @JsonKey(ignore: true)
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
