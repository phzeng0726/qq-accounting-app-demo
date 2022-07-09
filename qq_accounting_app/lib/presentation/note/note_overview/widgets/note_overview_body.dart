import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../application/chart/statistic_chart/statistic_chart_cubit.dart';
import '../../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../../domain/core/device_time_stamp.dart';
import '../../../core/widgets/load_status_screen.dart';
import 'note_overview_widgets_export.dart';

class NoteOverviewBody extends StatelessWidget {
  const NoteOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
      builder: (context, state) {
        final DateTime now = DateTime.now();
        return LoadStatusScreen(
          loadStatus: state.loadStatus,
          succeedScreen: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  if (DeviceTimeStamp(state.focusedDay).toDayString() !=
                      DeviceTimeStamp(now).toDayString()) ...[
                    ElevatedButton(
                      onPressed: () =>
                          context.read<NoteWatcherCubit>().onDaySelected(
                                now,
                                now,
                              ),
                      child: Text(
                        FlutterI18n.translate(
                            context, "note.overview.returnToday"),
                      ),
                    )
                  ],
                  const ManualCalendar(),
                  ExpansionTile(
                    initiallyExpanded: context
                        .watch<StatisticChartCubit>()
                        .state
                        .isChartExpanded,
                    title: Text(
                      FlutterI18n.translate(
                          context, "note.overview.dailyCountExpansionTitle"),
                    ),
                    subtitle: Text(
                      context.watch<StatisticChartCubit>().state.isChartExpanded
                          ? FlutterI18n.translate(
                              context, "note.overview.letChartCollapsed")
                          : FlutterI18n.translate(
                              context, "note.overview.letChartExpanded"),
                      style: TextStyle(
                          color: context
                                  .watch<StatisticChartCubit>()
                                  .state
                                  .isChartExpanded
                              ? Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.6)
                              : Colors.black54),
                    ),
                    onExpansionChanged: (bool value) => context
                        .read<StatisticChartCubit>()
                        .chartExpandedChanged(value),
                    leading: const Icon(Icons.data_usage_outlined),
                    children: [
                      const AmountTypeSwitchButton(),
                      AmountCircularChart(
                        notes: state.notes,
                      )
                    ],
                  ),
                  ExpansionTile(
                    initiallyExpanded: true,
                    title: Text(
                      FlutterI18n.translate(
                          context, "note.overview.dailyDetailExpansionTitle"),
                    ),
                    subtitle: const DailyTotalRow(),
                    leading: const Icon(Icons.receipt_long_outlined),
                    children: List.generate(
                      state.notes.length,
                      (index) => DetailListTile(
                        editedNote: state.notes[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
