import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../application/charts/charts_bloc.dart';
import '../../../../domain/charts/chart_item.dart';
import '../../../../domain/core/load_state.dart';
import '../../../../domain/notes/note.dart';

class AmountCircularChart extends StatelessWidget {
  final List<Note> notes;
  AmountCircularChart(this.notes);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatisticChartBloc, StatisticChartState>(
      // listenWhen: (p, c) =>
      //     p.loadState != c.loadState && c.loadState == LoadState.inProgress(),
      // listener: (context, state) {
      //   context
      //       .read<StatisticChartBloc>()
      //       .add(StatisticChartEvent.getSingleDayStarted(
      //         state.amountType,
      //         state.dateTime,
      //       ));
      // },
      builder: (context, state) {
        return state.loadState.map(
          initial: (_) => Text('initial'),
          inProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (_) => state.chartItems.isEmpty
              ? Text('無資料')
              : SfCircularChart(
                  legend:
                      Legend(isVisible: true, position: LegendPosition.bottom),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <DoughnutSeries>[
                      DoughnutSeries<ChartItem, String>(
                          name: state.amountType == 'expense' ? '支出' : '收入',
                          dataSource: state.chartItems,
                          explode: true,
                          explodeIndex: 0,
                          xValueMapper: (ChartItem data, _) => data.category,
                          yValueMapper: (ChartItem data, _) => data.amount,
                          dataLabelMapper: (ChartItem data, _) =>
                              '${data.category}: ${(data.percentage * 100).toStringAsFixed(2)}%',
                          dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              // NOTE: Avoid labels intersection
                              labelIntersectAction: LabelIntersectAction.shift,
                              labelPosition: ChartDataLabelPosition.outside,
                              connectorLineSettings: ConnectorLineSettings(
                                type: ConnectorType.curve,
                                length: '25%',
                              )),
                          radius: '60%',
                          enableTooltip: true),
                    ]),
          failure: (state) {
            return Text('${state}');
          },
        );
      },
    );
  }
}
