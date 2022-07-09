import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:qq_accounting_app/application/account/account_form/account_form_cubit.dart';

import '../../../../application/account/account_watcher/account_watcher_cubit.dart';
import '../../../../application/note/note_form/note_form_cubit.dart';

// TODO 顏色要跟收入和支出的顏色一樣
class CurrencyTypeSheet extends StatelessWidget {
  const CurrencyTypeSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categoryList = <String>[];
    return BlocBuilder<AccountWatcherCubit, AccountWatcherState>(
        // buildWhen: (p, c) => p.signInState != c.signInState,
        builder: (context, state) {
      double mWidth = MediaQuery.of(context).size.width;
      double mHeight = MediaQuery.of(context).size.height;

      // if (_amountType == 'expense') {
      //   _categoryList = state.expenseCategoryList;
      // } else if (_amountType == 'income') {
      //   _categoryList = state.incomeCategoryList;
      // }

      return SizedBox(
        width: mWidth,
        height: mHeight * 0.75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(FlutterI18n.translate(context, "note.form.category.title")),
            Expanded(
              child: GridView.count(
                // crossAxisCount is the number of columns
                crossAxisCount: 3,
                // This creates two columns with two items in each column
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
                // // TODO 新增新類別的page和bloc
                // context
                //     .read<AccountFormCubit>()
                //     .categoryCreated(_amountType, '新類別測試');
              },
              child: Container(
                  height: 50.0,
                  width: mWidth,
                  color: Colors.white.withOpacity(0.2),
                  child: const Center(child: Text('新增新類別'))),
            )
          ],
        ),
      );
    });
  }
}
