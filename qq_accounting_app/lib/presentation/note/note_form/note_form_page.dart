import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../application/core/navigation/navigation_cubit.dart';
import '../../../application/note/note_form/note_form_cubit.dart';
import '../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../constants.dart';
import '../../core/widgets/tap_out_dismiss_keyboard.dart';
import 'widgets/note_delete_button.dart';
import 'widgets/note_form_body.dart';

class NoteFormPage extends StatelessWidget {
  const NoteFormPage({Key? key}) : super(key: key);
  // NoteFormPage -> NoteOverviewPage
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // splsh_listeners裡面有一模一樣的listenWhen，但pop我覺得還是放在這裡比較直覺
        BlocListener<NoteFormCubit, NoteFormState>(
          listenWhen: (p, c) =>
              p.isSaving != c.isSaving &&
              c.isSaving == false &&
              c.failureOption == none(),
          listener: (_, state) {
            context.router.pop();
            context.read<NavigationCubit>().pushOrPopPage();
          },
        ),
        BlocListener<NoteFormCubit, NoteFormState>(
          listenWhen: (p, c) =>
              p.isValidating != c.isValidating &&
              p.failureOption != c.failureOption,
          listener: (_, state) {
            state.failureOption.fold(
              () => null,
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    amountMustGreaterThan0: (_) => FlutterI18n.translate(
                        context, "note.form.error.amountMustGreaterThan0"),
                    insufficientBalance: (_) => FlutterI18n.translate(
                        context, "note.form.error.insufficientBalance"),
                    unexpected: (_) => FlutterI18n.translate(
                        context, "note.form.error.unexpected"),
                  ),
                ).show(context);
              },
            );
          },
        ),
      ],
      child: BlocBuilder<NoteFormCubit, NoteFormState>(
        builder: (context, state) {
          final bool isExpense = state.note.amountType == 'expense';
          return TapOutDismissKeyboard(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: isExpense
                    ? NoteColors.expenseAppBarColor
                    : NoteColors.incomeAppBarColor,
                centerTitle: true,
                title: state.isEditing
                    ? Text(
                        FlutterI18n.translate(context, "note.form.editTitle"))
                    : Text(FlutterI18n.translate(
                        context, "note.form.createTitle")),
                elevation: 0,
                actions: [
                  if (state.isEditing) ...[
                    NoteDeleteButton(note: state.note),
                  ],
                  IconButton(
                    icon: const Icon(Icons.check),
                    onPressed: () async {
                      // 當天的淨收支
                      int initialAmount = context
                          .read<NoteWatcherCubit>()
                          .state
                          .account
                          .initialAmount;
                      await context
                          .read<NoteFormCubit>()
                          .saved(initialAmount: initialAmount);
                    },
                  ),
                ],
              ),
              body: const NoteFormBody(),
            ),
          );
        },
      ),
    );
  }
}
