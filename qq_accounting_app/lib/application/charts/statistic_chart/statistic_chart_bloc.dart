import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qq_accounting_app/domain/charts/i_chart_repository.dart';
import 'package:qq_accounting_app/domain/notes/i_note_repository.dart';

import '../../../domain/charts/chart_item.dart';
import '../../../domain/core/load_state.dart';
import '../../../domain/notes/account.dart';
import '../../../domain/notes/note.dart';

part 'statistic_chart_bloc.freezed.dart';
part 'statistic_chart_event.dart';
part 'statistic_chart_state.dart';

@injectable
class StatisticChartBloc
    extends Bloc<StatisticChartEvent, StatisticChartState> {
  final INoteRepository _noteRepository;

  final IChartRepository _chartRepository;

  StatisticChartBloc(this._noteRepository, this._chartRepository)
      : super(StatisticChartState.initial()) {}

  @override
  Stream<StatisticChartState> mapEventToState(
    StatisticChartEvent event,
  ) async* {
    yield* event.map(
      selectedAccount: (e) async* {
        yield state.copyWith(
          account: e.account,
        );
      },
      dateTimeChanged: (e) async* {
        yield state.copyWith(
          dateTime: e.dateTime,
        );
      },
      amountTypeChanged: (e) async* {
        yield state.copyWith(
          loadState: const LoadState.inProgress(),
          amountType: e.amountTypeStr,
        );
      },
      getSingleDayStarted: (e) async* {
        yield state.copyWith(
          loadState: const LoadState.inProgress(),
        );
        // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
        String _day = e.dateTime.toString().substring(0, 10);

        List<Note> _noteList =
            await _noteRepository.getNotesByAmountTypeFromTimeToTime(
          state.account.id!,
          e.amountType,
          '${_day}',
          '${_day}',
        );

        List<ChartItem> _chartItems =
            await _chartRepository.combineCategoryForChart(_noteList);
        add(StatisticChartEvent.chartItemsLoaded(_chartItems));
      },
      getDuringDayStarted: (e) async* {
        yield state.copyWith(
          loadState: const LoadState.inProgress(),
        );
        // NOTE: sqflite疑似只能用yyyy-mm-dd篩選
        String _startTime = e.startTime.toString().substring(0, 10);
        String _endTime = e.endTime.toString().substring(0, 10);

        List<Note> _noteList =
            await _noteRepository.getNotesByAmountTypeFromTimeToTime(
                state.account.id!,
                e.amountType,
                '${_startTime}',
                '${_endTime}');

        List<ChartItem> _chartItems =
            await _chartRepository.combineCategoryForChart(_noteList);
        add(StatisticChartEvent.chartItemsLoaded(_chartItems));
      },
      chartItemsLoaded: (e) async* {
        yield state.copyWith(
          loadState: const LoadState.success(),
          chartItems: e.chartItems,
        );
      },
      //   amountTypeChanged: (e) async* {
      //     yield state.copyWith(
      //       loadState: const LoadState.inProgress(),
      //       amountType: e.amountTypeStr,
      //     );
      // }, loadingChartStarted: (e) async* {
      //   /*
      //     step1. 篩選income or expense 的note
      //     step2. 統計為 Map<category,amount>  並轉為chartItem
      //     */
      //   List<Note> _filteredNotes = await _noteRepository.(
      //       e.notes, state.amountType);

      //   List<ChartItem> _chartItems =
      //       await _chartRepository.combineCategoryForChart(_filteredNotes);

      //   add(StatisticChartEvent.chartItemsLoaded(_chartItems));
      // }, chartItemsLoaded: (e) async* {
      //   yield state.copyWith(
      //     loadState: const LoadState.success(),
      //     chartItems: e.chartItems,
      //   );
      // }
    );
  }
}
