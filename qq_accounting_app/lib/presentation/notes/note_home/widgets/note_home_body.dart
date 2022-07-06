import 'package:flutter/material.dart';
import 'package:qq_accounting_app/presentation/notes/note_home/widgets/manual_calendar.dart';

import '../../../../application/notes/note_blocs.dart';
import 'note_home_body_widgets.dart';

class NoteHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return state.loadStatus.map(
          initial: (_) => Container(),
          inProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (_) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    if (state.focusedDay.toString().substring(0, 10) !=
                        DateTime.now().toString().substring(0, 10)) ...[
                      ElevatedButton(
                          onPressed: () {
                            context.read<NoteWatcherBloc>().add(
                                NoteWatcherEvent.onDaySelected(
                                    DateTime.now(), DateTime.now()));
                          },
                          child: Text('返回當日'))
                    ],
                    ManualCalendar(),
                    ExpansionTile(
                      initiallyExpanded: true,
                      title: Text('日明細'),
                      subtitle: DailyTotalRow(),
                      leading: Icon(Icons.receipt_long_outlined),
                      children: List.generate(state.notes.length,
                          (index) => DetailListTile(state.notes[index])),
                    ),
                    ExpansionTile(
                        initiallyExpanded: true,
                        title: Text('日統計'),
                        leading: Icon(Icons.data_usage_outlined),
                        // trailing: ,
                        children: [
                          AmountTypeSwitchButton(),
                          AmountCircularChart(state.notes)
                        ]),
                  ],
                ),
              ),
            );
          },
          failure: (state) {
            return Text('${state}');
          },
        );
      },
    );
  }
}
