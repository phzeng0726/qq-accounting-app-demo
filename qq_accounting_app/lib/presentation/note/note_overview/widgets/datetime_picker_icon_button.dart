import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/note/note_watcher/note_watcher_cubit.dart';

class DateTimePickerIconButton extends StatelessWidget {
  const DateTimePickerIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
        builder: (context, state) {
      return IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () async {
            var dateTime = await showDatePicker(
                context: context,
                initialDate: state.focusedDay,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030));

            context
                .read<NoteWatcherCubit>()
                .onDaySelected(DateTime.now(), dateTime!);
          });
    });
  }
}
