import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../../constants.dart';

class DailyTotalRow extends StatelessWidget {
  const DailyTotalRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${FlutterI18n.translate(context, "income")} $dollarSign ${state.dailyIncomeAmount}',
                  style: TextStyle(color: NoteColors.incomeTextColor),
                ),
                Text(
                  '${FlutterI18n.translate(context, "expense")} $dollarSign ${state.dailyExpenseAmount}',
                  style: TextStyle(color: NoteColors.expenseTextColor),
                ),
              ],
            ),
            RichText(
              maxLines: 2,
              softWrap: true,
              text: TextSpan(
                text:
                    '${FlutterI18n.translate(context, "netAmount")} $dollarSign ${state.dailyNetAmount} ',
                style: TextStyle(
                  color: state.dailyNetAmount >= 0
                      ? NoteColors.incomeTextColor
                      : NoteColors.expenseTextColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
