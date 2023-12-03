part of 'note_watcher_cubit.dart';

@freezed
abstract class NoteWatcherState with _$NoteWatcherState {
  const factory NoteWatcherState({
    required LoadStatus loadStatus,
    required Account account,
    required List<Category> expenseCategoryList,
    required List<Category> incomeCategoryList,
    required List<Note> notes,
    required int dailyIncomeAmount,
    required int dailyExpenseAmount,
    required int dailyNetAmount,

    // 月曆
    required CalendarFormat calendarFormat,
    required RangeSelectionMode rangeSelectionMode,
    required DateTime focusedDay,
    required DateTime? selectedDay,
    required DateTime? rangeStart,
    required DateTime? rangeEnd,
    required Option<NoteFailure> failureOption,
  }) = _NoteWatcherState;

  factory NoteWatcherState.initial() => NoteWatcherState(
        loadStatus: const LoadStatus.initial(),
        account: Account.empty(),
        expenseCategoryList: <Category>[],
        incomeCategoryList: <Category>[],
        notes: <Note>[],
        dailyIncomeAmount: 0,
        dailyExpenseAmount: 0,
        dailyNetAmount: 0,

        // 月曆
        calendarFormat: CalendarFormat.week,
        rangeSelectionMode: RangeSelectionMode
            .toggledOff, // Can be toggled on/off by longpressing a date
        focusedDay: DateTime.now(),
        selectedDay: DateTime.now(),
        rangeStart: DateTime.now(),
        rangeEnd: DateTime.now(),
        failureOption: none(),
      );
}
