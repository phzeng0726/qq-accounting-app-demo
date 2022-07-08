part of 'navigation_cubit.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    required LoadStatus loadStatus,
    required Type routeType,
  }) = _NavigationState;

  factory NavigationState.initial() => const NavigationState(
        loadStatus: LoadStatus.initial(),
        routeType: Type,
      );
}



// @immutable
// abstract class NavigationState {}

// class SplashInitial extends NavigationState {}

// class SplashLoading extends NavigationState {}

// class SplashLoaded extends NavigationState {}