import 'package:flutter/material.dart';

import '../../../../application/accounts/account_blocs.dart';
import '../../../core/widgets/manual_button.dart';

class CurrencyTypePickerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountFormBloc, AccountFormState>(
        // buildWhen: (p, c) => p.signInState != c.signInState,
        builder: (context, state) {
      return ManualButton(
          child: Text('${state.account.currencyType}'),
          onPressed: () async {
            await showModalBottomSheet(
                context: context,
                builder: (builder) {
                  return Text('hi');
                  // return CategorySheet();
                });
          });
    });
  }
}
