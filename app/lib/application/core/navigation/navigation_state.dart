part of 'navigation_cubit.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    required LoadStatus loadStatus,
    required String routeName,
  }) = _NavigationState;

  factory NavigationState.initial() => const NavigationState(
        loadStatus: LoadStatus.failed(),
        routeName: '',
      );
}



// @immutable
// abstract class NavigationState {}

// class SplashInitial extends NavigationState {}

// class SplashLoading extends NavigationState {}

// class SplashLoaded extends NavigationState {}