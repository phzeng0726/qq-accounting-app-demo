part of 'note_watcher_bloc.dart';

@freezed
abstract class NoteWatcherEvent with _$NoteWatcherEvent {
  // NOTE: 選擇帳戶時呼叫，非常重要！，因為後面抓資料需要從state抓取accountId才能篩選資料
  const factory NoteWatcherEvent.selectedAccount(
    Account account,
    // int? accountId,
    // int initialAmount,
  ) = _SelectedAccount;
  // NOTE:月曆選取呼叫
  // const factory NoteWatcherEvent.dateTimeChanged(
  //   DateTime dateTime,
  // ) = _DateTimeChanged;

  const factory NoteWatcherEvent.onDaySelected(
    DateTime selectedDay,
    DateTime focusedDay,
  ) = _OnDaySelected;


  const factory NoteWatcherEvent.onRangeSelected(
    DateTime? startTime,
    DateTime? endTime,
    DateTime focusedDay,
  ) = _OnRangeSelected;


  const factory NoteWatcherEvent.onFormatChanged(
    dynamic format
  ) = _OnFormatChanged;

  // NOTE:抓資料
  const factory NoteWatcherEvent.getSingleDayStarted(
    DateTime dateTime,
  ) = _GetSingleDayStarted;

  const factory NoteWatcherEvent.getDuringDayStarted(
    DateTime startTime,
    DateTime endTime,
  ) = _GetDuringDayStarted;

  // 收到資料
  const factory NoteWatcherEvent.notesReceived(
    List<Note> notes,
  ) = _NotesReceived;
}
