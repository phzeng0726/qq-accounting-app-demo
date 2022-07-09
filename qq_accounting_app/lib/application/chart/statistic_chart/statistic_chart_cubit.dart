// ignore_for_file: unnecessary_string_interpolations

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qq_accounting_app/domain/chart/chart_failure.dart';
import 'package:qq_accounting_app/domain/note/note_failure.dart';

import '../../../domain/account/account.dart';
import '../../../domain/chart/chart_item.dart';
import '../../../domain/chart/i_chart_repository.dart';
import '../../../domain/core/load_status.dart';
import '../../../domain/note/i_note_repository.dart';
import '../../../domain/note/note.dart';

part 'statistic_chart_cubit.freezed.dart';
part 'statistic_chart_state.dart';

class StatisticChartCubit extends Cubit<StatisticChartState> {
  final INoteRepository _noteRepository;
  final IChartRepository _chartRepository;

  StatisticChartCubit(
    this._noteRepository,
    this._chartRepository,
  ) : super(StatisticChartState.initial());

  void selectedAccount(Account account) {
    emit(
      state.copyWith(
        account: account,
      ),
    );
  }

  void dateTimeChanged(DateTime dateTime) {
    emit(
      state.copyWith(
        dateTime: dateTime,
      ),
    );
  }

  void amountTypeChanged(String amountType) {
    emit(
      state.copyWith(
        loadStatus: const LoadStatus.inProgress(),
        amountType: amountType,
      ),
    );
  }

  Future<void> getSingleDayStarted({
    required String amountType,
    required DateTime dateTime,
  }) async {
    Either<NoteFailure, List<Note>> failureOrNoteList;
    Either<ChartFailure, List<ChartItem>> failureOrChartItemList;

    // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
    String day = dateTime.toString().substring(0, 10);

    failureOrNoteList = await _noteRepository.getNotesByAmountTypeDuringPeriod(
      state.account.id!,
      amountType,
      day,
      day,
    );

    failureOrNoteList.fold(
      (f) => emit(
        state.copyWith(
          loadStatus: const LoadStatus.failed(),
          noteFailureOption: some(f),
        ),
      ),
      (noteList) async {
        failureOrChartItemList =
            await _chartRepository.combineCategoryForChart(noteList);

        failureOrChartItemList.fold(
          (f) => emit(
            state.copyWith(
              loadStatus: const LoadStatus.failed(),
              chartFailureOption: some(f),
            ),
          ),
          (chartItems) => emit(
            state.copyWith(
              loadStatus: const LoadStatus.succeed(),
              chartItems: chartItems,
            ),
          ),
        );
      },
    );
  }

  Future<void> getDuringDayStarted({
    required String amountType,
    required DateTime startTime,
    required DateTime endTime,
  }) async {
    Either<NoteFailure, List<Note>> failureOrNoteList;
    Either<ChartFailure, List<ChartItem>> failureOrChartItemList;

    // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
    String subStartTime = startTime.toString().substring(0, 10);
    String subEndTime = endTime.toString().substring(0, 10);

    failureOrNoteList = await _noteRepository.getNotesByAmountTypeDuringPeriod(
      state.account.id!,
      amountType,
      subStartTime,
      subEndTime,
    );

    failureOrNoteList.fold(
      (f) => emit(
        state.copyWith(
          loadStatus: const LoadStatus.failed(),
          noteFailureOption: some(f),
        ),
      ),
      (noteList) async {
        failureOrChartItemList =
            await _chartRepository.combineCategoryForChart(noteList);

        failureOrChartItemList.fold(
          (f) => emit(
            state.copyWith(
              loadStatus: const LoadStatus.failed(),
              chartFailureOption: some(f),
            ),
          ),
          (chartItems) => emit(
            state.copyWith(
              loadStatus: const LoadStatus.succeed(),
              chartItems: chartItems,
            ),
          ),
        );
      },
    );
  }
}
