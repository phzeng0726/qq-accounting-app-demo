import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/accounts/account_form/account_form_cubit.dart';
import '../../../application/charts/statistic_chart/statistic_chart_cubit.dart';
import '../../../application/notes/note_watcher/note_watcher_cubit.dart';
import '../../../domain/accounts/account.dart';
import '../../routes/router.gr.dart';

class AccountOverviewBody extends StatelessWidget {
  final List<Account> accountList;
  const AccountOverviewBody({
    Key? key,
    required this.accountList,
  }) : super(key: key);

  // TODO: accountBalance
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: accountList.length,
      itemBuilder: (context, index) {
        final account = accountList[index];
        // print(account.initialAmount +
        //     context.read<NoteWatcherCubit>().state.totalNetAmount);
        // return FutureBuilder(
        //     future: NoteRepository().computeNetAmount(account.id!),
        //     builder: (context, AsyncSnapshot snapshot) {
        //       if (!snapshot.hasData) {
        //         return Center(child: CircularProgressIndicator());
        //       } else {
        // int _accountBalance = snapshot.data + account.initialAmount;
        return ListTile(
          title: Text(account.title),
          subtitle: Text(account.currencyType),
          // trailing: Text('$dollarSign $_accountBalance'),
          onTap: () {
            final DateTime now = DateTime.now();
            // // NOTE: 因為寫了note表單後餘額還是會變動，與其傳入accountBalance，不如直接傳account抓取initialAmount，後續計算邏輯簡單很多
            context.read<NoteWatcherCubit>().selectedAccount(account);
            context.read<StatisticChartCubit>().selectedAccount(account);
            context.read<NoteWatcherCubit>().getSingleDayStarted(dateTime: now);

            context.read<StatisticChartCubit>().getSingleDayStarted(
                  amountType:
                      context.read<StatisticChartCubit>().state.amountType,
                  dateTime: now,
                );
            context.pushRoute(NoteOverviewRoute(accountId: account.id));
          },
          onLongPress: () {
            context.read<AccountFormCubit>().initAccount(
                  initialAccount: account,
                  isEditing: true,
                );
            context.pushRoute(const AccountFormRoute());
          },
        );
      },
    );
  }
}
