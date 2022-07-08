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

  _NavigationState call({required PageNavStatus pageNavStatus}) {
    return _NavigationState(
      pageNavStatus: pageNavStatus,
    );
  }
}

/// @nodoc
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  PageNavStatus get pageNavStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({PageNavStatus pageNavStatus});

  $PageNavStatusCopyWith<$Res> get pageNavStatus;
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
    Object? pageNavStatus = freezed,
  }) {
    return _then(_value.copyWith(
      pageNavStatus: pageNavStatus == freezed
          ? _value.pageNavStatus
          : pageNavStatus // ignore: cast_nullable_to_non_nullable
              as PageNavStatus,
    ));
  }

  @override
  $PageNavStatusCopyWith<$Res> get pageNavStatus {
    return $PageNavStatusCopyWith<$Res>(_value.pageNavStatus, (value) {
      return _then(_value.copyWith(pageNavStatus: value));
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
  $Res call({PageNavStatus pageNavStatus});

  @override
  $PageNavStatusCopyWith<$Res> get pageNavStatus;
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
    Object? pageNavStatus = freezed,
  }) {
    return _then(_NavigationState(
      pageNavStatus: pageNavStatus == freezed
          ? _value.pageNavStatus
          : pageNavStatus // ignore: cast_nullable_to_non_nullable
              as PageNavStatus,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  const _$_NavigationState({required this.pageNavStatus});

  @override
  final PageNavStatus pageNavStatus;

  @override
  String toString() {
    return 'NavigationState(pageNavStatus: $pageNavStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NavigationState &&
            const DeepCollectionEquality()
                .equals(other.pageNavStatus, pageNavStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pageNavStatus));

  @JsonKey(ignore: true)
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState({required PageNavStatus pageNavStatus}) =
      _$_NavigationState;

  @override
  PageNavStatus get pageNavStatus;
  @override
  @JsonKey(ignore: true)
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PageNavStatusTearOff {
  const _$PageNavStatusTearOff();

  _InitialPage initialPage() {
    return const _InitialPage();
  }

  _NavHomePage navHomePage() {
    return const _NavHomePage();
  }

  _NavAccountFormPage navAccountFormPage() {
    return const _NavAccountFormPage();
  }

  _NavNotePage navNotePage() {
    return const _NavNotePage();
  }

  _NavNoteFormPage navNoteFormPage() {
    return const _NavNoteFormPage();
  }
}

/// @nodoc
const $PageNavStatus = _$PageNavStatusTearOff();

/// @nodoc
mixin _$PageNavStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() navHomePage,
    required TResult Function() navAccountFormPage,
    required TResult Function() navNotePage,
    required TResult Function() navNoteFormPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_NavHomePage value) navHomePage,
    required TResult Function(_NavAccountFormPage value) navAccountFormPage,
    required TResult Function(_NavNotePage value) navNotePage,
    required TResult Function(_NavNoteFormPage value) navNoteFormPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageNavStatusCopyWith<$Res> {
  factory $PageNavStatusCopyWith(
          PageNavStatus value, $Res Function(PageNavStatus) then) =
      _$PageNavStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageNavStatusCopyWithImpl<$Res>
    implements $PageNavStatusCopyWith<$Res> {
  _$PageNavStatusCopyWithImpl(this._value, this._then);

  final PageNavStatus _value;
  // ignore: unused_field
  final $Res Function(PageNavStatus) _then;
}

/// @nodoc
abstract class _$InitialPageCopyWith<$Res> {
  factory _$InitialPageCopyWith(
          _InitialPage value, $Res Function(_InitialPage) then) =
      __$InitialPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialPageCopyWithImpl<$Res> extends _$PageNavStatusCopyWithImpl<$Res>
    implements _$InitialPageCopyWith<$Res> {
  __$InitialPageCopyWithImpl(
      _InitialPage _value, $Res Function(_InitialPage) _then)
      : super(_value, (v) => _then(v as _InitialPage));

  @override
  _InitialPage get _value => super._value as _InitialPage;
}

/// @nodoc

class _$_InitialPage implements _InitialPage {
  const _$_InitialPage();

  @override
  String toString() {
    return 'PageNavStatus.initialPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() navHomePage,
    required TResult Function() navAccountFormPage,
    required TResult Function() navNotePage,
    required TResult Function() navNoteFormPage,
  }) {
    return initialPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
  }) {
    return initialPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (initialPage != null) {
      return initialPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_NavHomePage value) navHomePage,
    required TResult Function(_NavAccountFormPage value) navAccountFormPage,
    required TResult Function(_NavNotePage value) navNotePage,
    required TResult Function(_NavNoteFormPage value) navNoteFormPage,
  }) {
    return initialPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
  }) {
    return initialPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (initialPage != null) {
      return initialPage(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements PageNavStatus {
  const factory _InitialPage() = _$_InitialPage;
}

/// @nodoc
abstract class _$NavHomePageCopyWith<$Res> {
  factory _$NavHomePageCopyWith(
          _NavHomePage value, $Res Function(_NavHomePage) then) =
      __$NavHomePageCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavHomePageCopyWithImpl<$Res> extends _$PageNavStatusCopyWithImpl<$Res>
    implements _$NavHomePageCopyWith<$Res> {
  __$NavHomePageCopyWithImpl(
      _NavHomePage _value, $Res Function(_NavHomePage) _then)
      : super(_value, (v) => _then(v as _NavHomePage));

  @override
  _NavHomePage get _value => super._value as _NavHomePage;
}

/// @nodoc

class _$_NavHomePage implements _NavHomePage {
  const _$_NavHomePage();

  @override
  String toString() {
    return 'PageNavStatus.navHomePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NavHomePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() navHomePage,
    required TResult Function() navAccountFormPage,
    required TResult Function() navNotePage,
    required TResult Function() navNoteFormPage,
  }) {
    return navHomePage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
  }) {
    return navHomePage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (navHomePage != null) {
      return navHomePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_NavHomePage value) navHomePage,
    required TResult Function(_NavAccountFormPage value) navAccountFormPage,
    required TResult Function(_NavNotePage value) navNotePage,
    required TResult Function(_NavNoteFormPage value) navNoteFormPage,
  }) {
    return navHomePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
  }) {
    return navHomePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (navHomePage != null) {
      return navHomePage(this);
    }
    return orElse();
  }
}

abstract class _NavHomePage implements PageNavStatus {
  const factory _NavHomePage() = _$_NavHomePage;
}

/// @nodoc
abstract class _$NavAccountFormPageCopyWith<$Res> {
  factory _$NavAccountFormPageCopyWith(
          _NavAccountFormPage value, $Res Function(_NavAccountFormPage) then) =
      __$NavAccountFormPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavAccountFormPageCopyWithImpl<$Res>
    extends _$PageNavStatusCopyWithImpl<$Res>
    implements _$NavAccountFormPageCopyWith<$Res> {
  __$NavAccountFormPageCopyWithImpl(
      _NavAccountFormPage _value, $Res Function(_NavAccountFormPage) _then)
      : super(_value, (v) => _then(v as _NavAccountFormPage));

  @override
  _NavAccountFormPage get _value => super._value as _NavAccountFormPage;
}

/// @nodoc

class _$_NavAccountFormPage implements _NavAccountFormPage {
  const _$_NavAccountFormPage();

  @override
  String toString() {
    return 'PageNavStatus.navAccountFormPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NavAccountFormPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() navHomePage,
    required TResult Function() navAccountFormPage,
    required TResult Function() navNotePage,
    required TResult Function() navNoteFormPage,
  }) {
    return navAccountFormPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
  }) {
    return navAccountFormPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (navAccountFormPage != null) {
      return navAccountFormPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_NavHomePage value) navHomePage,
    required TResult Function(_NavAccountFormPage value) navAccountFormPage,
    required TResult Function(_NavNotePage value) navNotePage,
    required TResult Function(_NavNoteFormPage value) navNoteFormPage,
  }) {
    return navAccountFormPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
  }) {
    return navAccountFormPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (navAccountFormPage != null) {
      return navAccountFormPage(this);
    }
    return orElse();
  }
}

abstract class _NavAccountFormPage implements PageNavStatus {
  const factory _NavAccountFormPage() = _$_NavAccountFormPage;
}

/// @nodoc
abstract class _$NavNotePageCopyWith<$Res> {
  factory _$NavNotePageCopyWith(
          _NavNotePage value, $Res Function(_NavNotePage) then) =
      __$NavNotePageCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavNotePageCopyWithImpl<$Res> extends _$PageNavStatusCopyWithImpl<$Res>
    implements _$NavNotePageCopyWith<$Res> {
  __$NavNotePageCopyWithImpl(
      _NavNotePage _value, $Res Function(_NavNotePage) _then)
      : super(_value, (v) => _then(v as _NavNotePage));

  @override
  _NavNotePage get _value => super._value as _NavNotePage;
}

/// @nodoc

class _$_NavNotePage implements _NavNotePage {
  const _$_NavNotePage();

  @override
  String toString() {
    return 'PageNavStatus.navNotePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NavNotePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() navHomePage,
    required TResult Function() navAccountFormPage,
    required TResult Function() navNotePage,
    required TResult Function() navNoteFormPage,
  }) {
    return navNotePage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
  }) {
    return navNotePage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (navNotePage != null) {
      return navNotePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_NavHomePage value) navHomePage,
    required TResult Function(_NavAccountFormPage value) navAccountFormPage,
    required TResult Function(_NavNotePage value) navNotePage,
    required TResult Function(_NavNoteFormPage value) navNoteFormPage,
  }) {
    return navNotePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
  }) {
    return navNotePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (navNotePage != null) {
      return navNotePage(this);
    }
    return orElse();
  }
}

abstract class _NavNotePage implements PageNavStatus {
  const factory _NavNotePage() = _$_NavNotePage;
}

/// @nodoc
abstract class _$NavNoteFormPageCopyWith<$Res> {
  factory _$NavNoteFormPageCopyWith(
          _NavNoteFormPage value, $Res Function(_NavNoteFormPage) then) =
      __$NavNoteFormPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavNoteFormPageCopyWithImpl<$Res>
    extends _$PageNavStatusCopyWithImpl<$Res>
    implements _$NavNoteFormPageCopyWith<$Res> {
  __$NavNoteFormPageCopyWithImpl(
      _NavNoteFormPage _value, $Res Function(_NavNoteFormPage) _then)
      : super(_value, (v) => _then(v as _NavNoteFormPage));

  @override
  _NavNoteFormPage get _value => super._value as _NavNoteFormPage;
}

/// @nodoc

class _$_NavNoteFormPage implements _NavNoteFormPage {
  const _$_NavNoteFormPage();

  @override
  String toString() {
    return 'PageNavStatus.navNoteFormPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NavNoteFormPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialPage,
    required TResult Function() navHomePage,
    required TResult Function() navAccountFormPage,
    required TResult Function() navNotePage,
    required TResult Function() navNoteFormPage,
  }) {
    return navNoteFormPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
  }) {
    return navNoteFormPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialPage,
    TResult Function()? navHomePage,
    TResult Function()? navAccountFormPage,
    TResult Function()? navNotePage,
    TResult Function()? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (navNoteFormPage != null) {
      return navNoteFormPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialPage,
    required TResult Function(_NavHomePage value) navHomePage,
    required TResult Function(_NavAccountFormPage value) navAccountFormPage,
    required TResult Function(_NavNotePage value) navNotePage,
    required TResult Function(_NavNoteFormPage value) navNoteFormPage,
  }) {
    return navNoteFormPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
  }) {
    return navNoteFormPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialPage,
    TResult Function(_NavHomePage value)? navHomePage,
    TResult Function(_NavAccountFormPage value)? navAccountFormPage,
    TResult Function(_NavNotePage value)? navNotePage,
    TResult Function(_NavNoteFormPage value)? navNoteFormPage,
    required TResult orElse(),
  }) {
    if (navNoteFormPage != null) {
      return navNoteFormPage(this);
    }
    return orElse();
  }
}

abstract class _NavNoteFormPage implements PageNavStatus {
  const factory _NavNoteFormPage() = _$_NavNoteFormPage;
}
