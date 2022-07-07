import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/accounts/account_watcher/account_watcher_cubit.dart';

import '../../../application/accounts/account_form/account_form_cubit.dart';
import '../../../application/charts/statistic_chart/statistic_chart_cubit.dart';
import '../../../application/notes/note_watcher/note_watcher_cubit.dart';
import '../../../constants.dart';
import '../../../domain/accounts/account.dart';
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
                final DateTime now = DateTime.now();

                context.read<NoteWatcherCubit>().selectedAccount(account);
                context.read<StatisticChartCubit>().selectedAccount(account);

                context
                    .read<NoteWatcherCubit>()
                    .getSingleDayStarted(dateTime: now);
                context
                    .read<NoteWatcherCubit>()
                    .getDailyAmountStarted(dateTime: now);
                context.read<StatisticChartCubit>().getSingleDayStarted(
                    amountType:
                        context.read<StatisticChartCubit>().state.amountType,
                    dateTime: now);
                context.pushRoute(NoteOverviewRoute(accountId: account.id));
              },
              onLongPress: () {
                // 編輯
                context.read<AccountFormCubit>().initAccount(
                      initialAccount: account,
                      isEditing: true,
                    );
                context.pushRoute(const AccountFormRoute());
              },
            );
          },
        );
      },
    );
  }
}
