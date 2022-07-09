import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../core/widgets/load_status_screen.dart';
import 'note_overview_widgets_export.dart';

class NoteFilterBody extends StatelessWidget {
  const NoteFilterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
      builder: (context, state) {
        return LoadStatusScreen(
          loadStatus: state.loadStatus,
          succeedScreen: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  if (state.focusedDay.toString().substring(0, 10) !=
                      DateTime.now().toString().substring(0, 10)) ...[
                    ElevatedButton(
                        onPressed: () {
                          context
                              .read<NoteWatcherCubit>()
                              .onDaySelected(DateTime.now(), DateTime.now());
                        },
                        child: Text(
                          FlutterI18n.translate(
                              context, "note.overview.returnToday"),
                        ))
                  ],
                  const ManualCalendar(),
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
                            )),
                  ),
                  ExpansionTile(
                    initiallyExpanded: true,
                    title: Text(
                      FlutterI18n.translate(
                          context, "note.overview.dailyCountExpansionTitle"),
                    ),
                    leading: const Icon(Icons.data_usage_outlined),
                    // trailing: ,
                    children: [
                      const AmountTypeSwitchButton(),
                      AmountCircularChart(
                        notes: state.notes,
                      )
                    ],
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
