import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/accounts/account_form/account_form_cubit.dart';
import 'package:qq_accounting_app/presentation/accounts/account_form/widgets/currency_type_picker_button.dart';
import 'package:qq_accounting_app/presentation/accounts/account_form/widgets/initial_amount_enter_button.dart';
import 'package:qq_accounting_app/presentation/accounts/account_form/widgets/title_box.dart';

class AccountFormTable extends StatelessWidget {
  const AccountFormTable({Key? key}) : super(key: key);

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
                children: const [
                  Text('帳戶名稱'),
                  TitleBox(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('幣別'),
                  CurrencyTypePickerButton(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('初始金額'),
                  InitialAmountEnterButton(),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<AccountFormCubit>().saved();
                  context.router.pop();
                },
                child: const Text('確定'),
              )
            ],
          ).toList(),
        ));
  }
}
