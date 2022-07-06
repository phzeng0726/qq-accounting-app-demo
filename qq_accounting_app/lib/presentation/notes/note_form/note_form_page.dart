import 'package:flutter/material.dart';

import '../../../application/notes/note_blocs.dart';
import '../../../constants.dart';
import 'widgets/note_form_appbar.dart';
import 'widgets/note_form_body.dart';

class NoteFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
        // buildWhen: (p, c) => p.signInState != c.signInState,
        builder: (context, state) {
      return Scaffold(
          backgroundColor: state.note.amountType == 'expense'
              ? NoteColors.expenseBackgroundColor
              : NoteColors.incomeBackgroundColor,
          appBar: NoteFormAppBar(state.note, state.isEditing),
          body: NoteFormBody());
    });
  }
}
