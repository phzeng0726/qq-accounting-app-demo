import 'package:flutter/material.dart';

import '../../../../application/notes/note_blocs.dart';

class DateTimePickerIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
        builder: (context, state) {
      return IconButton(
          icon: Icon(Icons.calendar_today),
          onPressed: () async {
            var dateTime = await showDatePicker(
                context: context,
                initialDate: state.focusedDay,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030));
            context.read<NoteWatcherBloc>().add(
                  NoteWatcherEvent.onDaySelected(DateTime.now(), dateTime!),
                );
          });
    });
  }
}
