part of 'note_watcher_cubit.dart';

// TODO: 到時候需要添加Option 確認是否有error
@freezed
abstract class NoteWatcherState with _$NoteWatcherState {
  const factory NoteWatcherState({
    required LoadStatus loadStatus,
    // required DateTime dateTime,
    required Account account,
    required List<Note> notes,
    required int dailyIncomeAmount,
    required int dailyExpenseAmount,
    required int dailyNetAmount,

    // 月曆
    required CalendarFormat calendarFormat,
    required RangeSelectionMode rangeSelectionMode,
    required DateTime focusedDay,
    required DateTime? selectedDay,
    // required List<Note> notes,
    required DateTime? rangeStart,
    required DateTime? rangeEnd,
  }) = _NoteWatcherState;

  factory NoteWatcherState.initial() => NoteWatcherState(
        loadStatus: const LoadStatus.initial(),
        // dateTime: DateTime.now(),
        account: Account.empty(),
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
        // notes: <Note>[],
        rangeStart: DateTime.now(),
        rangeEnd: DateTime.now(),
      );
}
