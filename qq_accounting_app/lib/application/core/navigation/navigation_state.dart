part of 'navigation_cubit.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    required Type routeType,
  }) = _NavigationState;

  factory NavigationState.initial() => const NavigationState(
        routeType: Type,
      );
}
