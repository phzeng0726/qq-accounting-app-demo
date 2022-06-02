import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:qq_accounting_app/application/accounts/account_blocs.dart';

import '../../../routes/router.gr.dart';

class CreateAccountFormButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // 新增account
        context.read<AccountFormBloc>().add(AccountFormEvent.initialized(
            AccountFormState.initial().account, false));
        context.pushRoute(const AccountFormRoute());
      },
      icon: Icon(Icons.add),
    );
    ;
  }
}
