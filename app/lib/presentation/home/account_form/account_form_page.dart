import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../application/account/account_form/account_form_cubit.dart';
import '../../../../application/core/navigation/navigation_cubit.dart';
import '../../../../domain/account/account.dart';
import '../../core/widgets/tap_out_dismiss_keyboard.dart';
import 'widgets/account_form_table.dart';

class AccountFormPage extends StatelessWidget {
  const AccountFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountFormCubit, AccountFormState>(
        builder: ((context, state) {
      Account account = context.read<AccountFormCubit>().state.account;
      return TapOutDismissKeyboard(
        child: Scaffold(
          appBar: AppBar(
            title: Text(state.isEditing
                ? FlutterI18n.translate(context, "home.accountForm.editTitle")
                : FlutterI18n.translate(
                    context, "home.accountForm.createTitle")),
            actions: [
              Align(
                alignment: Alignment.centerRight,
                child: ButtonBar(
                  children: [
                    if (state.isEditing) ...[
                      IconButton(
                          onPressed: () {
                            context
                                .read<AccountFormCubit>()
                                .deleteAccount(account);
                            context.read<NavigationCubit>().pushOrPopPage();
                            context.router.pop();
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ))
                    ],
                    IconButton(
                        onPressed: () {
                          context.read<AccountFormCubit>().saved();

                          context.router.pop();
                          context.read<NavigationCubit>().pushOrPopPage();
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
        ),
      );
    }));
  }
}
