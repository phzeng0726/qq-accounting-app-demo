import 'package:flutter/material.dart';

import '../../../application/accounts/account_blocs.dart';
import 'widgets/account_form_body.dart';

class AccountFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountFormBloc, AccountFormState>(
        // buildWhen: (p, c) => p.signInState != c.signInState,
        builder: (context, state) {
      return Scaffold(
          // backgroundColor: state.note.amountType == 'expense'
          //     ? NoteColors.expenseBackgroundColor
          //     : NoteColors.incomeBackgroundColor,
          // appBar: NoteFormAppBar(state.note, state.isEditing),
          body: AccountFormBody());
    });
  }
}
