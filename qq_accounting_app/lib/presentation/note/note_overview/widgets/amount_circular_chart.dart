import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:qq_accounting_app/presentation/core/widgets/load_status_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../application/chart/statistic_chart/statistic_chart_cubit.dart';
import '../../../../domain/chart/chart_item.dart';
import '../../../../domain/note/note.dart';
import '../../../core/widgets/empty_widget.dart';

class AmountCircularChart extends StatelessWidget {
  final List<Note> notes;
  const AmountCircularChart({
    Key? key,
    required this.notes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatisticChartCubit, StatisticChartState>(
      builder: (context, state) {
        return LoadStatusScreen(
          loadStatus: state.loadStatus,
          succeedScreen: state.chartItems.isEmpty
              ? EmptyWidget(
                  text: FlutterI18n.translate(context, "note.emptyData"),
                )
              : SfCircularChart(
                  legend:
                      Legend(isVisible: true, position: LegendPosition.bottom),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <DoughnutSeries>[
                    DoughnutSeries<ChartItem, String>(
                        name: state.amountType == 'expense'
                            ? FlutterI18n.translate(context, "expense")
                            : FlutterI18n.translate(context, "income"),
                        dataSource: state.chartItems,
                        explode: true,
                        explodeIndex: 0,
                        xValueMapper: (ChartItem data, _) => data.category,
                        yValueMapper: (ChartItem data, _) => data.amount,
                        dataLabelMapper: (ChartItem data, _) =>
                            '${data.category}: ${(data.percentage * 100).toStringAsFixed(2)}%',
                        dataLabelSettings: const DataLabelSettings(
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
                  ],
                ),
        );
      },
    );
  }
}
