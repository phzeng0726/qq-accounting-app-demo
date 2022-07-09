// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/note/note_form/note_form_cubit.dart';
import '../../../core/widgets/manual_button.dart';

class DateTimePickerButton extends StatelessWidget {
  const DateTimePickerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormCubit, NoteFormState>(builder: (context, state) {
      return ManualButton(
          child: Text(state.note.dateTime.toString().substring(0, 10)),
          onPressed: () async {
            var dateTime = await showDatePicker(
                context: context,
                initialDate: state.note.dateTime,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030));
            context.read<NoteFormCubit>().dateTimeChanged(dateTime!);
          });
    });
  }
}
