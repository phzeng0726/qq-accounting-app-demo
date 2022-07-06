import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/notes/note_form/note_form_cubit.dart';
import '../../../core/widgets/manual_amount_type_switch_button.dart';

class AmountTypeSwitchButton extends StatelessWidget {
  const AmountTypeSwitchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormCubit, NoteFormState>(builder: (context, state) {
      return ManualAmountTypeSwitchButton(
        selectedAmountType: state.note.amountType,
        onIncomePressed: () =>
            context.read<NoteFormCubit>().amountTypeChanged('income'),
        onExpensePressed: () =>
            context.read<NoteFormCubit>().amountTypeChanged('expense'),
      );
    });
  }
}
