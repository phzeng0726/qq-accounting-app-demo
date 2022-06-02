import 'package:flutter/material.dart';

import '../../../../application/notes/note_blocs.dart';
import '../../../core/widgets/manual_amount_type_switch_button.dart';

class AmountTypeSwitchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(builder: (context, state) {
      return ManualAmountTypeSwitchButton(
        selectedAmountType: state.note.amountType,
        onIncomePressed: () => context.read<NoteFormBloc>().add(
              const NoteFormEvent.amountTypeChanged('income'),
            ),
        onExpensePressed: () => context.read<NoteFormBloc>().add(
              const NoteFormEvent.amountTypeChanged('expense'),
            ),
      );
    });
  }
}
