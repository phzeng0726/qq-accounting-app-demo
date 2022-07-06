// ignore_for_file: unnecessary_string_interpolations

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/accounts/account.dart';
import '../../../domain/core/load_status.dart';
import '../../../domain/notes/i_note_repository.dart';
import '../../../domain/notes/note.dart';
import '../../../domain/notes/note_failure.dart';

part 'note_watcher_cubit.freezed.dart';
part 'note_watcher_state.dart';

class NoteWatcherCubit extends Cubit<NoteWatcherState> {
  final INoteRepository _noteRepository;

  NoteWatcherCubit(
    this._noteRepository,
  ) : super(NoteWatcherState.initial());

  void selectedAccount(Account account) {
    emit(
      state.copyWith(
        account: account,
      ),
    );
  }

  Future<void> getSingleDayStarted({
    required DateTime dateTime,
  }) async {
    // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
    String day = dateTime.toString().substring(0, 10);
    Either<NoteFailure, List<Note>> failureOrNoteList;

    failureOrNoteList = await _noteRepository.getNotesDuringPeriod(
      state.account.id!,
      day,
      day,
    );

    failureOrNoteList.fold(
      (f) => emit(
        state.copyWith(
          failureOption: some(f),
        ),
      ),
      (noteList) async {
        notesReceived(noteList);
      },
    );
  }

  Future<void> getDuringDayStarted({
    required String amountType,
    required DateTime startTime,
    required DateTime endTime,
  }) async {
    // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
    String subStartTime = startTime.toString().substring(0, 10);
    String subEndTime = endTime.toString().substring(0, 10);

    Either<NoteFailure, List<Note>> failureOrNoteList;

    failureOrNoteList = await _noteRepository.getNotesDuringPeriod(
      state.account.id!,
      subStartTime,
      subEndTime,
    );

    failureOrNoteList.fold(
      (f) => emit(
        state.copyWith(
          failureOption: some(f),
        ),
      ),
      (noteList) async {
        notesReceived(noteList);
      },
    );
  }

  void notesReceived(List<Note> noteList) {
    emit(
      state.copyWith(
        loadStatus: const LoadStatus.succeed(),
        notes: noteList,
      ),
    );
  }

  void onDaySelected(
    DateTime selectedDay,
    DateTime focusedDay,
  ) {
    if (!isSameDay(state.selectedDay, selectedDay)) {
      emit(
        state.copyWith(
          selectedDay: selectedDay,
          focusedDay: focusedDay,
          rangeStart: null, // Important to clean those
          rangeEnd: null,
          rangeSelectionMode: RangeSelectionMode.toggledOff,
        ),
      );
    }
  }

  void onRangeSelected(
    DateTime startTime,
    DateTime endTime,
    DateTime focusedDay,
  ) {
    emit(
      state.copyWith(
        selectedDay: null,
        focusedDay: focusedDay,
        rangeStart: startTime, // Important to clean those
        rangeEnd: endTime,
        rangeSelectionMode: RangeSelectionMode.toggledOff,
      ),
    );
  }

  void onFormatChanged(
    CalendarFormat format,
  ) {
    if (state.calendarFormat != format) {
      emit(
        state.copyWith(
          calendarFormat: format,
        ),
      );
    }
  }

  @override
  Future<void> close() async {
    // await _noteStreamSubscription?.cancel();
    return super.close();
  }
}
