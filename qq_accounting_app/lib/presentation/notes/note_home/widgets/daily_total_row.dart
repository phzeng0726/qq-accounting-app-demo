import 'package:flutter/material.dart';

import '../../../../application/notes/note_blocs.dart';
import '../../../../constants.dart';

class DailyTotalRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(text: '', children: [
                TextSpan(
                  text: '收入 ${dollorSign} ${state.dailyIncomeAmount}',
                  style: TextStyle(color: NoteColors.incomeTextColor),
                ),
                TextSpan(
                    text: '｜', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: '支出 ${dollorSign} ${state.dailyExpenseAmount} ',
                  style: TextStyle(color: NoteColors.expenseTextColor),
                ),
              ]),
            ),
            RichText(
                text: TextSpan(
              text: '淨額 ${dollorSign} ${state.dailyNetAmount} ',
              style: TextStyle(
                  color: state.dailyNetAmount > 0
                      ? NoteColors.incomeTextColor
                      : NoteColors.expenseTextColor),
            )),
          ],
        );
      },
    );
  }
}
