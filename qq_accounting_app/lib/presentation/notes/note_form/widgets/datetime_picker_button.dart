import 'package:flutter/material.dart';

import '../../../../application/notes/note_blocs.dart';
import '../../../core/widgets/manual_button.dart';

class DateTimePickerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(builder: (context, state) {
      return ManualButton(
          child: Text('${state.note.dateTime.toString().substring(0, 10)}'),
          onPressed: () async {
            var dateTime = await showDatePicker(
                context: context,
                initialDate: state.note.dateTime,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030));
            context.read<NoteFormBloc>().add(
                  NoteFormEvent.dateTimeChanged(dateTime!),
                );
          });
    });
  }
}
