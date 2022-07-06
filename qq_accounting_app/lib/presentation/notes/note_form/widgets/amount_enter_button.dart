import 'package:flutter/material.dart';

import '../../../../application/notes/note_blocs.dart';
import '../../../core/widgets/manual_button.dart';
import 'amount_calculator.dart';

class AmountEnterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
        // buildWhen: (p, c) => p.signInState != c.signInState,
        builder: (context, state) {
      return ManualButton(
          child: Text('${state.note.amount.toString()}'),
          onPressed: () async {
            await showModalBottomSheet(
                context: context,
                builder: (builder) {
                  return AmountCalculator();
                });
          });
    });
  }
}
