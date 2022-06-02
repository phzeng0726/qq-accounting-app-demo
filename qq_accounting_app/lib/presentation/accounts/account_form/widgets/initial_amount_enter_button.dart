import 'package:flutter/material.dart';

import '../../../../application/accounts/account_blocs.dart';
import '../../../core/widgets/manual_button.dart';
import 'amount_calculator.dart';

class InitialAmountEnterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountFormBloc, AccountFormState>(
        // buildWhen: (p, c) => p.signInState != c.signInState,
        builder: (context, state) {
      return ManualButton(
          child: Text('${state.account.initialAmount.toString()}'),
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
