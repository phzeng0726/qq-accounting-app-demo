import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../application/notes/note_blocs.dart';
import '../../../../domain/notes/note.dart';
import '../../../routes/router.gr.dart';

class CreateNoteFormButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        DateTime _noteFormDateTime =
            context.read<NoteWatcherBloc>().state.focusedDay;
        int _accountId = context.read<NoteWatcherBloc>().state.account.id!;
        Note _initNote = NoteFormState.initial()
            .note
            .copyWith(accountId: _accountId, dateTime: _noteFormDateTime);

        context
            .read<NoteFormBloc>()
            .add(NoteFormEvent.initialized(_initNote, false));

        context.pushRoute(const NoteFormRoute());
      },
      icon: Icon(Icons.add),
    );
  }
}
