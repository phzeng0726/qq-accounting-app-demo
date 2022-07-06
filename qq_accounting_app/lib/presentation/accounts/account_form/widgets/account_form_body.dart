import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:qq_accounting_app/application/accounts/account_blocs.dart';

import 'account_form_body_widgets.dart';
import 'title_box.dart';

class AccountFormBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('帳戶名稱'),
                  TitleBox(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('幣別'),
                  CurrencyTypePickerButton(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('初始金額'), InitialAmountEnterButton()],
              ),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<AccountFormBloc>()
                        .add(AccountFormEvent.saved());
                    context.router.pop();
                  },
                  child: Text('確定'))
            ],
          ).toList(),
        ));
  }
}
