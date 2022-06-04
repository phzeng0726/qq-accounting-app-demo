import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/accounts/account_form/account_form_cubit.dart';
import 'package:qq_accounting_app/domain/accounts/account.dart';

import 'package:qq_accounting_app/presentation/accounts/account_form/widgets/account_form_table.dart';

class AccountFormPage extends StatelessWidget {
  const AccountFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountFormCubit, AccountFormState>(
        builder: ((context, state) {
      Account account = context.read<AccountFormCubit>().state.account;
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            '帳戶列表',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: ButtonBar(
                children: [
                  IconButton(
                      onPressed: () => context
                          .read<AccountFormCubit>()
                          .deleteAccount(account),
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red.withOpacity(0.2),
                      )),
                  IconButton(
                      onPressed: () {
                        context.read<AccountFormCubit>().saved();
                        context.router.pop();
                      },
                      icon: const Icon(
                        Icons.check,
                        color: Colors.green,
                      ))
                ],
              ),
            )
          ],
        ),
        body: const AccountFormTable(),
      );
    }));
  }
}
