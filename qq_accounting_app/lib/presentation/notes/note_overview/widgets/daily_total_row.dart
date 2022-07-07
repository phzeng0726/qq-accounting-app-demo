import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/notes/note_watcher/note_watcher_cubit.dart';
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
            Flexible(
              child: Column(
                children: [
                  Text(
                    '收入 $dollarSign ${state.dailyIncomeAmount}',
                    style: TextStyle(color: NoteColors.incomeTextColor),
                  ),
                  Text(
                    '支出 $dollarSign ${state.dailyExpenseAmount}',
                    style: TextStyle(color: NoteColors.expenseTextColor),
                  ),
                ],
              ),
            ),
            Flexible(
              child: RichText(
                maxLines: 2,
                softWrap: true,
                text: TextSpan(
                  text: '淨額 $dollarSign ${state.dailyNetAmount} ',
                  style: TextStyle(
                    color: state.dailyNetAmount > 0
                        ? NoteColors.incomeTextColor
                        : NoteColors.expenseTextColor,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
