part of 'statistic_chart_bloc.dart';

// TODO: 到時候需要添加Option 確認是否有error
@freezed
abstract class StatisticChartState with _$StatisticChartState {
  const factory StatisticChartState({
    required LoadState loadState,
    required String amountType,
    required List<ChartItem> chartItems,
    required DateTime dateTime,
    required Account account,
  }) = _StatisticChartState;

  factory StatisticChartState.initial() => StatisticChartState(
        loadState: const LoadState.initial(),
        amountType: 'expense',
        chartItems: <ChartItem>[],
        dateTime: DateTime.now(),
        account: Account.empty(),
      );
}
