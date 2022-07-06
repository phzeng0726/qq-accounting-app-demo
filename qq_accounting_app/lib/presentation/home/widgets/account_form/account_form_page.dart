import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../application/accounts/account_form/account_form_cubit.dart';
import '../../../../domain/accounts/account.dart';
import 'widgets/account_form_table.dart';


class AccountFormPage extends StatelessWidget {
  const AccountFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountFormCubit, AccountFormState>(
        builder: ((context, state) {
      Account account = context.read<AccountFormCubit>().state.account;
      return Scaffold(
        appBar: AppBar(
          title: Text(FlutterI18n.translate(context, "home.accountForm.title")),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: ButtonBar(
                children: [
                  IconButton(
                      onPressed: () => context
                          .read<AccountFormCubit>()
                          .deleteAccount(account),
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
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
