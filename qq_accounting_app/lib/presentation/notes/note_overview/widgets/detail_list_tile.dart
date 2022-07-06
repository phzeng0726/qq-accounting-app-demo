import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/presentation/routes/router.gr.dart';

import '../../../../application/notes/note_form/note_form_cubit.dart';
import '../../../../constants.dart';
import '../../../../domain/notes/note.dart';

class DetailListTile extends StatelessWidget {
  final Note editedNote;

  const DetailListTile({
    Key? key,
    required this.editedNote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(editedNote.itemName),
      subtitle: Text(editedNote.category),
      trailing: Text('$dollarSign ${editedNote.amount}',
          style: TextStyle(
              color: editedNote.amountType == 'expense'
                  ? NoteColors.expenseTextColor
                  : NoteColors.incomeTextColor)),
      onLongPress: () {
        context.read<NoteFormCubit>().initialized(editedNote, true);
        context.pushRoute(const NoteFormRoute());
      },
    );
  }
}
