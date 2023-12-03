import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/account/account_form/account_form_cubit.dart';
import '../../../core/widgets/manual_button.dart';
import 'amount_calculator.dart';

class InitialAmountEnterButton extends StatelessWidget {
  const InitialAmountEnterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountFormCubit, AccountFormState>(
      builder: (context, state) {
        return ManualButton(
          child: Text(state.account.initialAmount.toString()),
          onPressed: () async {
            await showModalBottomSheet(
              context: context,
              builder: (builder) {
                return const AmountCalculator();
              },
            );
          },
        );
      },
    );
  }
}
