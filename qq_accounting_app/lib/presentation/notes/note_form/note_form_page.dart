import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/notes/note_form/note_form_cubit.dart';
import '../../../constants.dart';
import '../../core/widgets/tap_out_dismiss_keyboard.dart';
import 'widgets/note_form_appbar.dart';
import 'widgets/note_form_body.dart';

class NoteFormPage extends StatelessWidget {
  const NoteFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormCubit, NoteFormState>(
        builder: (context, state) {
      return TapOutDismissKeyboard(
        child: Scaffold(
          backgroundColor: state.note.amountType == 'expense'
              ? NoteColors.expenseBackgroundColor
              : NoteColors.incomeBackgroundColor,
          appBar: const NoteFormAppBar(),
          body: const NoteFormBody(),
        ),
      );
    });
  }
}
