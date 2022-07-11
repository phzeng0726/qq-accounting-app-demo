import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../application/core/navigation/navigation_cubit.dart';
import '../../../../application/note/note_form/note_form_cubit.dart';
import '../../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../../constants.dart';
import '../../../../domain/note/category.dart';
import 'category_box.dart';

class CategoryCreatedDialog extends StatelessWidget {
  final String amountType;
  const CategoryCreatedDialog({
    Key? key,
    required this.amountType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
      builder: (context, state) {
        double mWidth = MediaQuery.of(context).size.width;

        return AlertDialog(
          backgroundColor: amountType == "expense"
              ? NoteColors.expenseBackgroundColor
              : NoteColors.incomeBackgroundColor,
          contentPadding: const EdgeInsets.all(kDefaultHeightSize),
          title: Center(
            child: Text(
              FlutterI18n.translate(context, "note.form.category.created"),
            ),
          ),
          content: Container(
            width: mWidth / 1.2,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              const CategoryBox(),
              const SizedBox(
                height: kDefaultHeightSize,
              ),
              ButtonBar(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        amountType == 'expense'
                            ? NoteColors.expenseButtonColor
                            : NoteColors.incomeButtonColor,
                      ),
                    ),
                    onPressed: () {
                      context.router.pop();
                      context.read<NavigationCubit>().pushOrPopPage();
                    },
                    child: Text(FlutterI18n.translate(
                        context, 'note.form.category.dialogBackButtonText')),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        amountType == 'expense'
                            ? NoteColors.expenseButtonColor
                            : NoteColors.incomeButtonColor,
                      ),
                    ),
                    onPressed: () {
                      context.read<NoteFormCubit>().categoryCreated(
                            Category.empty().copyWith(
                              accountId: state.account.id!,
                              amountType: amountType,
                              title: context
                                  .read<NoteFormCubit>()
                                  .state
                                  .categoryBoxText,
                            ),
                          );
                      context.router.pop();
                      context.read<NavigationCubit>().pushOrPopPage();
                    },
                    child: Text(FlutterI18n.translate(
                        context, 'note.form.category.dialogButtonText')),
                  )
                ],
              ),
            ]),
          ),
        );
      },
    );
  }
}
