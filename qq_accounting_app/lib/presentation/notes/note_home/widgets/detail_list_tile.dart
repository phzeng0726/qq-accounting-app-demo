import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../application/notes/note_blocs.dart';
import '../../../../constants.dart';
import '../../../../domain/notes/note.dart';
import '../../../routes/router.gr.dart';

class DetailListTile extends StatelessWidget {
  final Note editedNote;
  DetailListTile(this.editedNote);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${editedNote.itemName}'),
      subtitle: Text('${editedNote.category}'),
      trailing: Text('${dollorSign} ${editedNote.amount}',
          style: TextStyle(
              color: editedNote.amountType == 'expense'
                  ? NoteColors.expenseTextColor
                  : NoteColors.incomeTextColor)),
      onLongPress: () {
        context
            .read<NoteFormBloc>()
            .add(NoteFormEvent.initialized(editedNote, true));
        context.pushRoute(const NoteFormRoute());
      },
    );
  }
}
