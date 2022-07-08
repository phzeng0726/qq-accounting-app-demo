part of 'navigation_cubit.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    required PageNavStatus pageNavStatus,
  }) = _NavigationState;

  factory NavigationState.initial() => const NavigationState(
        pageNavStatus: PageNavStatus.initialPage(),
      );
}

@freezed
class PageNavStatus with _$PageNavStatus {
  const factory PageNavStatus.initialPage() = _InitialPage;
  const factory PageNavStatus.navHomePage() = _NavHomePage;
  const factory PageNavStatus.navAccountFormPage() = _NavAccountFormPage;
  const factory PageNavStatus.navNotePage() = _NavNotePage;
  const factory PageNavStatus.navNoteFormPage() = _NavNoteFormPage;
}
