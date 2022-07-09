// ignore_for_file: unnecessary_string_interpolations

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../domain/account/account.dart';
import '../../../domain/core/device_time_stamp.dart';
import '../../../domain/core/load_status.dart';
import '../../../domain/note/i_note_repository.dart';
import '../../../domain/note/note.dart';
import '../../../domain/note/note_failure.dart';

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

  Future<void> getDailyAmountStarted({
    required DateTime dateTime,
  }) async {
    // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
    String day = DeviceTimeStamp(dateTime).toDayString();

    Either<NoteFailure, int> eitherExpense;
    Either<NoteFailure, int> eitherIncome;

    eitherExpense =
        await _noteRepository.getTotalAmountByAmountTypeDuringPeriod(
      state.account.id!,
      'expense',
      day,
      day,
    );

    eitherIncome = await _noteRepository.getTotalAmountByAmountTypeDuringPeriod(
      state.account.id!,
      'income',
      day,
      day,
    );
    final totalExpense =
        eitherExpense.getOrElse(() => throw UnimplementedError());
    final totalIncome =
        eitherIncome.getOrElse(() => throw UnimplementedError());

    emit(
      state.copyWith(
        dailyIncomeAmount: totalIncome,
        dailyExpenseAmount: totalExpense,
        dailyNetAmount: totalIncome - totalExpense,
      ),
    );
  }

  Future<void> getSingleDayStarted({
    required DateTime dateTime,
  }) async {
    // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
    String day = DeviceTimeStamp(dateTime).toDayString();
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
    String subStartTime = DeviceTimeStamp(startTime).toDayString();
    String subEndTime = DeviceTimeStamp(endTime).toDayString();

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
    DateTime? startTime,
    DateTime? endTime,
    DateTime focusedDay,
  ) {
    emit(
      state.copyWith(
        selectedDay: null,
        focusedDay: focusedDay,
        rangeStart: startTime, // Important to clean those
        rangeEnd: endTime,
        rangeSelectionMode: RangeSelectionMode.toggledOn,
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
    return super.close();
  }
}
