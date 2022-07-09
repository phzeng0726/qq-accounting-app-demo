import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:qq_accounting_app/application/account/account_form/account_form_cubit.dart';
import 'package:qq_accounting_app/constants.dart';

import '../../../../application/account/account_watcher/account_watcher_cubit.dart';
import '../../../../application/note/note_form/note_form_cubit.dart';

class CategorySheet extends StatelessWidget {
  const CategorySheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categoryList = <String>[];
    return BlocBuilder<AccountWatcherCubit, AccountWatcherState>(
      builder: (context, state) {
        double mWidth = MediaQuery.of(context).size.width;
        double mHeight = MediaQuery.of(context).size.height;
        final String amountType =
            context.read<NoteFormCubit>().state.note.amountType;
        // if (_amountType == 'expense') {
        //   _categoryList = state.expenseCategoryList;
        // } else if (_amountType == 'income') {
        //   _categoryList = state.incomeCategoryList;
        // }

        return Container(
          decoration: BoxDecoration(
            color: amountType == "expense"
                ? NoteColors.expenseBackgroundColor
                : NoteColors.incomeBackgroundColor,
          ),
          width: mWidth,
          height: mHeight * 0.75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                FlutterI18n.translate(context, "note.form.category"),
                style: Theme.of(context).textTheme.headline5,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3, // the number of columns
                  children: List.generate(categoryList.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          context
                              .read<NoteFormCubit>()
                              .categoryChanged(categoryList[index]);
                          context.router.pop();
                        },
                        child: Container(
                          color: Colors.white.withOpacity(0.2),
                          child: Center(
                            child: Text(
                              categoryList[index],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              InkWell(
                onTap: () {
                  // TODO: 新增新類別的page和bloc
                  // context
                  //     .read<AccountFormCubit>()
                  //     .categoryCreated(_amountType, '新類別測試');
                },
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
                              context, "note.form.categoryCreated"),
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
