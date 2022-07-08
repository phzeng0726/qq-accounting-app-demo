part of 'statistic_chart_cubit.dart';

@freezed
abstract class StatisticChartState with _$StatisticChartState {
  const factory StatisticChartState({
    required LoadStatus loadStatus,
    required String amountType,
    required List<ChartItem> chartItems,
    required DateTime dateTime,
    required Account account,
    required Option<NoteFailure> noteFailureOption,
    required Option<ChartFailure> chartFailureOption,
  }) = _StatisticChartState;

  factory StatisticChartState.initial() => StatisticChartState(
        loadStatus: const LoadStatus.initial(),
        amountType: 'expense',
        chartItems: <ChartItem>[],
        dateTime: DateTime.now(),
        account: Account.empty(),
        noteFailureOption: none(),
        chartFailureOption: none(),
      );
}
