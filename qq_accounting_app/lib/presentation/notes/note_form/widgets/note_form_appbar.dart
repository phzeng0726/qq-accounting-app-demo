import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:qq_accounting_app/infrastructure/notes/note_repository.dart';
import 'note_delete_button.dart';

import '../../../../application/notes/note_blocs.dart';
import '../../../../constants.dart';
import '../../../../domain/notes/note.dart';

class NoteFormAppBar extends StatelessWidget with PreferredSizeWidget {
  final Note note;
  final bool isEditing;
  NoteFormAppBar(this.note, this.isEditing);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: note.amountType == 'expense'
            ? NoteColors.expenseBackgroundColor
            : NoteColors.incomeBackgroundColor,
        centerTitle: true,
        title: isEditing ? Text('編輯') : Text('輸入'),
        elevation: 0,
        actions: [
          if (isEditing) ...[
            NoteDeleteButton(note),
          ],
          IconButton(
            icon: Icon(Icons.pets),
            onPressed: () async {
              int _initialAmount =
                  context.read<NoteWatcherBloc>().state.account.initialAmount;
              int _netAmount =
                  await NoteRepository().computeNetAmount(note.accountId);
              int _accountBalance = _initialAmount + _netAmount;

              if (note.amount <= 0) {
                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("發生錯誤"),
                      content: Text("金額輸入值需大於 ${dollorSign} 0"),
                      actions: [
                        InkWell(
                          onTap: () => context.router.pop(),
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              } else if (note.amountType == 'expense' &&
                  note.amount > _accountBalance) {
                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("發生錯誤"),
                      content: Text("帳戶餘額（${dollorSign} ${_accountBalance}）不足"),
                      actions: [
                        InkWell(
                          onTap: () => context.router.pop(),
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              } else {
                context.read<NoteFormBloc>().add(NoteFormEvent.saved());
                context.router.pop();
              }
            },
          ),
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
