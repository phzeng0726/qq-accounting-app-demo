part of 'statistic_chart_bloc.dart';

@freezed
abstract class StatisticChartEvent with _$StatisticChartEvent {
    // NOTE: 選擇帳戶時呼叫，非常重要！，因為後面抓資料需要從state抓取accountId才能篩選資料
  const factory StatisticChartEvent.selectedAccount(
    Account account,
  ) = _SelectedAccount;
  
// 月曆選取呼叫
  factory StatisticChartEvent.dateTimeChanged(
    DateTime dateTime,
  ) = _DateTimeChanged;

  const factory StatisticChartEvent.amountTypeChanged(
      String amountTypeStr) = _AmountTypeChanged;

  // 抓資料
  const factory StatisticChartEvent.getSingleDayStarted(
    String amountType,
    DateTime dateTime,
  ) = _GetSingleDayStarted;

  const factory StatisticChartEvent.getDuringDayStarted(
    String amountType,
    DateTime startTime,
    DateTime endTime,
  ) = _GetDuringDayStarted;


  const factory StatisticChartEvent.chartItemsLoaded(
      List<ChartItem> chartItems) = _ChartItemsLoaded;
}
