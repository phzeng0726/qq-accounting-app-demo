import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:qq_accounting_app/domain/notes/account.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/core/load_state.dart';
import '../../../domain/notes/i_note_repository.dart';
import '../../../domain/notes/note.dart';

part 'note_watcher_bloc.freezed.dart';
part 'note_watcher_event.dart';
part 'note_watcher_state.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;

  NoteWatcherBloc(this._noteRepository) : super(NoteWatcherState.initial());

  // StreamSubscription<Either<NoteFailure, List<Note>>> _noteStreamSubscription;

  @override
  Stream<NoteWatcherState> mapEventToState(
    NoteWatcherEvent event,
  ) async* {
    yield* event.map(
      selectedAccount: (e) async* {
        yield state.copyWith(
          account: e.account,
        );
      },
      getSingleDayStarted: (e) async* {
        yield state.copyWith(
          loadState: const LoadState.inProgress(),
        );
        // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
        String _day = e.dateTime.toString().substring(0, 10);

        List<Note> _noteList = await _noteRepository.getNotesFromTimeToTime(
            state.account.id!, '${_day}', '${_day}');
        add(NoteWatcherEvent.notesReceived(_noteList));
      },
      getDuringDayStarted: (e) async* {
        yield state.copyWith(
          loadState: const LoadState.inProgress(),
        );
        // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
        String _startTime = e.startTime.toString().substring(0, 10);
        String _endTime = e.endTime.toString().substring(0, 10);

        List<Note> _noteList = await _noteRepository.getNotesFromTimeToTime(
            state.account.id!, '${_startTime}', '${_endTime}');

        add(NoteWatcherEvent.notesReceived(_noteList));
      },
      // dateTimeChanged: (e) async* {
      //   yield state.copyWith(
      //     dateTime: e.dateTime,
      //     // loadState: const LoadState.inProgress(),
      //   );
      // },
      onDaySelected: (e) async* {
        if (!isSameDay(state.selectedDay, e.selectedDay)) {
          yield state.copyWith(
            selectedDay: e.selectedDay,
            focusedDay: e.focusedDay,
            rangeStart: null, // Important to clean those
            rangeEnd: null,
            rangeSelectionMode: RangeSelectionMode.toggledOff,
          );

          // add(NoteWatcherEvent.getSingleDayStarted(e.selectedDay));
        }
      },
      onRangeSelected: (e) async* {
        yield state.copyWith(
          selectedDay: null,
          focusedDay: e.focusedDay,
          rangeStart: e.startTime,
          rangeEnd: e.endTime,
          rangeSelectionMode: RangeSelectionMode.toggledOff,
        );

        // // `start` or `end` could be null
        // if (e.startTime != null && e.endTime != null) {
        //   add(NoteWatcherEvent.getDuringDayStarted(e.startTime!, e.endTime!));
        // } else if (e.startTime != null) {
        //   add(NoteWatcherEvent.getSingleDayStarted(e.startTime!));
        // } else if (e.endTime != null) {
        //   add(NoteWatcherEvent.getSingleDayStarted(e.endTime!));
        // }
      },
      onFormatChanged: (e) async* {
        if (state.calendarFormat != e.format) {
          yield state.copyWith(calendarFormat: e.format);
        }
      },
      // NOTE: 要取捨，篩選dateTime後篩選amountType應該在db做，還是在bloc做？
      // 在bloc做的話，會消耗內存，但不需要再次query，較方便，目前先用這個方案
      notesReceived: (e) async* {
        int _dailylIncomeAmount = 0;
        int _dailyExpenseAmount = 0;

        e.notes.forEach((note) {
          if (note.amountType == 'income') {
            _dailylIncomeAmount += note.amount;
          } else {
            _dailyExpenseAmount += note.amount;
          }
        });

        yield state.copyWith(
            loadState: const LoadState.success(),
            notes: e.notes,
            dailyIncomeAmount: _dailylIncomeAmount,
            dailyExpenseAmount: _dailyExpenseAmount,
            dailyNetAmount: _dailylIncomeAmount - _dailyExpenseAmount);
      },
    );
    print(state);
  }

  @override
  Future<void> close() async {
    // await _noteStreamSubscription?.cancel();
    return super.close();
  }
}
