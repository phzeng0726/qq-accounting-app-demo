import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../application/notes/note_form/note_form_cubit.dart';
import '../../../../application/notes/note_watcher/note_watcher_cubit.dart';
import '../../../../constants.dart';
import '../../../../infrastructure/notes/note_repository.dart';
import 'note_delete_button.dart';

class NoteFormAppBar extends StatelessWidget with PreferredSizeWidget {
  const NoteFormAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormCubit, NoteFormState>(
      builder: (context, state) {
        final note = state.note;
        final isEditing = state.isEditing;

        return AppBar(
            backgroundColor: note.amountType == 'expense'
                ? NoteColors.expenseBackgroundColor
                : NoteColors.incomeBackgroundColor,
            centerTitle: true,
            title: isEditing
                ? Text(FlutterI18n.translate(context, "note.form.editTitle"))
                : Text(FlutterI18n.translate(context, "note.form.createTitle")),
            elevation: 0,
            actions: [
              if (isEditing) ...[
                NoteDeleteButton(
                  note: note,
                ),
              ],
              IconButton(
                icon: const Icon(Icons.pets),
                onPressed: () async {
                  final note = state.note;
                  int initialAmount = context
                      .read<NoteWatcherCubit>()
                      .state
                      .account
                      .initialAmount;
                  int netAmount =
                      await NoteRepository().computeNetAmount(note.accountId);
                  int accountBalance = initialAmount + netAmount;
                  if (note.amount <= 0) {
                    // show the dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(FlutterI18n.translate(
                              context, "note.form.dialog.title")),
                          content: Text(
                            FlutterI18n.translate(context,
                                "note.form.dialog.content.amountMustGreaterThan0"),
                          ),
                          actions: [
                            InkWell(
                              onTap: () => context.router.pop(),
                              child: Text(FlutterI18n.translate(
                                  context, "note.form.dialog.buttonText")),
                            ),
                          ],
                        );
                      },
                    );
                  } else if (note.amountType == 'expense' &&
                      note.amount > accountBalance) {
                    // show the dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(FlutterI18n.translate(
                              context, "note.form.dialog.title")),
                          content: Text(FlutterI18n.translate(context,
                              "note.form.dialog.content.insufficientBalance")),
                          actions: [
                            InkWell(
                              onTap: () => context.router.pop(),
                              child: Text(FlutterI18n.translate(
                                  context, "note.form.dialog.buttonText")),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    context.read<NoteFormCubit>().saved();
                    context.router.pop();
                  }
                },
              ),
            ]);
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
