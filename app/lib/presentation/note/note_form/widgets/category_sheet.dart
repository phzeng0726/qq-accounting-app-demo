import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../application/note/note_form/note_form_cubit.dart';
import '../../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../../constants.dart';
import 'category_created_dialog.dart';

class CategorySheet extends StatelessWidget {
  final String amountType;
  const CategorySheet({
    Key? key,
    required this.amountType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
      builder: (context, state) {
        final bool isExpense =
            context.read<NoteFormCubit>().state.note.amountType == 'expense';

        double mWidth = MediaQuery.of(context).size.width;
        double mHeight = MediaQuery.of(context).size.height;

        return Container(
          decoration: BoxDecoration(
            color: isExpense
                ? NoteColors.expenseBackgroundColor
                : NoteColors.incomeBackgroundColor,
          ),
          width: mWidth,
          height: mHeight * 0.75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding/2),
                child: Text(
                  FlutterI18n.translate(context, "note.form.category.title"),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3, // the number of columns
                  children: List.generate(
                      isExpense
                          ? state.expenseCategoryList.length
                          : state.incomeCategoryList.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          context.read<NoteFormCubit>().categoryChanged(
                              isExpense
                                  ? state.expenseCategoryList[index].title
                                  : state.incomeCategoryList[index].title);
                          context.router.pop();
                        },
                        child: Container(
                          color: Colors.white.withOpacity(0.2),
                          child: Center(
                            child: Text(
                              isExpense
                                  ? state.expenseCategoryList[index].title
                                  : state.incomeCategoryList[index].title,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              InkWell(
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CategoryCreatedDialog(
                      amountType: amountType,
                    );
                  },
                ),
                child: Container(
                    height: 50.0,
                    width: mWidth,
                    color: Colors.white.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.add),
                        const SizedBox(width: kDefaultHeightSize / 2),
                        Text(
                          FlutterI18n.translate(
                              context, "note.form.category.created"),
                        )
                      ],
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
