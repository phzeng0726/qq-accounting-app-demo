// ignore_for_file: unnecessary_string_interpolations

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qq_accounting_app/domain/notes/note_failure.dart';

import '../../../domain/accounts/account.dart';
import '../../../domain/charts/chart_item.dart';
import '../../../domain/charts/i_chart_repository.dart';
import '../../../domain/core/load_status.dart';
import '../../../domain/notes/i_note_repository.dart';
import '../../../domain/notes/note.dart';

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
    // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
    String day = dateTime.toString().substring(0, 10);

    failureOrNoteList = await _noteRepository.getNotesByAmountTypeDuringPeriod(
      state.account.id!,
      amountType,
      day,
      day,
    );

    failureOrNoteList.fold(
      (f) => null,
      (noteList) async {
        List<ChartItem> chartItems =
            await _chartRepository.combineCategoryForChart(noteList);

        chartItemsLoaded(chartItems);
      },
    );
  }

  Future<void> getDuringDayStarted({
    required String amountType,
    required DateTime startTime,
    required DateTime endTime,
  }) async {
    Either<NoteFailure, List<Note>> failureOrNoteList;

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
      (f) => null,
      (noteList) async {
        List<ChartItem> chartItems =
            await _chartRepository.combineCategoryForChart(noteList);

        chartItemsLoaded(chartItems);
      },
    );
  }

  void chartItemsLoaded(List<ChartItem> chartItems) {
    emit(
      state.copyWith(
        loadStatus: const LoadStatus.succeed(),
        chartItems: chartItems,
      ),
    );
  }
}
