import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/account/account_watcher/account_watcher_cubit.dart';

import '../../../application/account/account_form/account_form_cubit.dart';
import '../../../application/chart/statistic_chart/statistic_chart_cubit.dart';
import '../../../application/core/navigation/navigation_cubit.dart';
import '../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../constants.dart';
import '../../../domain/account/account.dart';
import '../../routes/router.gr.dart';

class AccountOverviewBody extends StatelessWidget {
  final List<Account> accountList;
  final List<int> netAmountList;
  const AccountOverviewBody({
    Key? key,
    required this.accountList,
    required this.netAmountList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountWatcherCubit, AccountWatcherState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: accountList.length,
          itemBuilder: (context, index) {
            final account = accountList[index];
            final accountBalance = netAmountList[index] + account.initialAmount;

            return ListTile(
              title: Text(account.title),
              subtitle: Text(account.currencyType),
              trailing: Text('$dollarSign $accountBalance'),
              onTap: () {
                // 選擇 Account，並push頁面
                context.read<AccountWatcherCubit>().selectedAccount(account);
                context.pushRoute(
                  NoteOverviewRoute(
                    accountId: account.id,
                    accountName: account.title,
                  ),
                );
                context.read<NavigationCubit>().pushOrPopPage();
              },
              onLongPress: () {
                // 編輯，並push頁面
                context.read<AccountFormCubit>().initAccount(
                      initialAccount: account,
                      isEditing: true,
                    );
                context.pushRoute(const AccountFormRoute());
                context.read<NavigationCubit>().pushOrPopPage();
              },
            );
          },
        );
      },
    );
  }
}
