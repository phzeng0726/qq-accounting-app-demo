import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:qq_accounting_app/application/accounts/account_watcher/account_watcher_cubit.dart';
import 'package:qq_accounting_app/presentation/core/app_widget.dart';

class MockSongCubit extends MockCubit<AccountWatcherState> implements AccountWatcherCubit {}

void main() {
  // late AccountWatcherCubit mockAccountWatcherCubit;

  // setUp(() {
  //   mockAccountWatcherCubit = MockAccountWatcherCubit();
  // });
  testWidgets(
    '[MyApp Widget Test] find a SongPage',
    (widgetTester) async {
      // // Arrange
      // when(() => mockSongCubit.state).thenReturn(SongState.initial());

      // Build the widget
      await widgetTester.pumpWidget(AppWidget());

      // Assert
      expect(find.byType(AppWidget), findsOneWidget);
    },
  );
}