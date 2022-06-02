import 'package:flutter/material.dart';

import '../../../../application/notes/note_blocs.dart';
import '../../../../constants.dart';
import '../../../../domain/notes/note.dart';
import 'detail_list_tile.dart';

class DailyDetailExpansionTile extends StatelessWidget {
  final List<Note> notes;
  const DailyDetailExpansionTile({
    Key? key,
    required this.notes,
  }) : super(key: key);

  Widget _dailyAmountSubtitle() {
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

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: Text('日明細'),
      subtitle: _dailyAmountSubtitle(),
      leading: Icon(Icons.receipt_long_outlined),
      children: List.generate(
        notes.length,
        (index) => DetailListTile(notes[index]),
      ),
    );
  }
}
