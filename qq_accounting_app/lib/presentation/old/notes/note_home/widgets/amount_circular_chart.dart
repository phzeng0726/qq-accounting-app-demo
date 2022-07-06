// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// import '../../../../application/charts/statistic_chart/statistic_chart_cubit.dart';
// import '../../../../domain/charts/chart_item.dart';
// import '../../../../domain/notes/note.dart';

// class AmountCircularChart extends StatelessWidget {
//   final List<Note> notes;
//   AmountCircularChart(this.notes);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<StatisticChartCubit, StatisticChartState>(
//       // listenWhen: (p, c) =>
//       //     p.loadStatus != c.loadStatus && c.loadStatus == LoadStatus.inProgress(),
//       // listener: (context, state) {
//       //   context
//       //       .read<StatisticChartCubit>()
//       //       .add(StatisticChartEvent.getSingleDayStarted(
//       //         state.amountType,
//       //         state.dateTime,
//       //       ));
//       // },
//       builder: (context, state) {
//         return state.loadStatus.map(
//           initial: (_) => Text('initial'),
//           inProgress: (_) => const Center(
//             child: CircularProgressIndicator(),
//           ),
//           succeed: (_) => state.chartItems.isEmpty
//               ? Text('無資料')
//               : SfCircularChart(
//                   legend:
//                       Legend(isVisible: true, position: LegendPosition.bottom),
//                   tooltipBehavior: TooltipBehavior(enable: true),
//                   series: <DoughnutSeries>[
//                       DoughnutSeries<ChartItem, String>(
//                           name: state.amountType == 'expense' ? '支出' : '收入',
//                           dataSource: state.chartItems,
//                           explode: true,
//                           explodeIndex: 0,
//                           xValueMapper: (ChartItem data, _) => data.category,
//                           yValueMapper: (ChartItem data, _) => data.amount,
//                           dataLabelMapper: (ChartItem data, _) =>
//                               '${data.category}: ${(data.percentage * 100).toStringAsFixed(2)}%',
//                           dataLabelSettings: DataLabelSettings(
//                               isVisible: true,
//                               // NOTE: Avoid labels intersection
//                               labelIntersectAction: LabelIntersectAction.shift,
//                               labelPosition: ChartDataLabelPosition.outside,
//                               connectorLineSettings: ConnectorLineSettings(
//                                 type: ConnectorType.curve,
//                                 length: '25%',
//                               )),
//                           radius: '60%',
//                           enableTooltip: true),
//                     ]),
//           failed: (state) {
//             return Text('${state}');
//           },
//         );
//       },
//     );
//   }
// }
