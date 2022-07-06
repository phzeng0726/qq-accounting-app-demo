import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/accounts/account_watcher/account_watcher_cubit.dart';
import '../../../../application/charts/statistic_chart/statistic_chart_cubit.dart';
import '../../../../application/notes/note_watcher/note_watcher_cubit.dart';
import '../../../../constants.dart';
import '../../../../infrastructure/notes/note_repository.dart';
import '../../../routes/router.gr.dart';

class AccountHomeBody extends StatelessWidget {
  const AccountHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountWatcherCubit, AccountWatcherState>(
        builder: (context, state) {
      return state.status.map(
        initial: (_) => Container(),
        inProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        succeed: (_) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final account = state.accounts[index];
              // print(account.initialAmount +
              //     context.read<NoteWatcherCubit>().state.totalNetAmount);
              return FutureBuilder(
                  future: NoteRepository().computeNetAmount(account.id!),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child:  CircularProgressIndicator());
                    } else {
                      int accountBalance =
                          snapshot.data + account.initialAmount;
                      return ListTile(
                        title: Text(account.title),
                        subtitle: Text(account.currencyType),
                        trailing: Text('$dollorSign $accountBalance'),
                        onTap: () {
                          // NOTE: 因為寫了note表單後餘額還是會變動，與其傳入accountBalance，不如直接傳account抓取initialAmount，後續計算邏輯簡單很多
                          context
                              .read<NoteWatcherCubit>()
                              .selectedAccount(account);

                          context
                              .read<StatisticChartCubit>()
                              .selectedAccount(account);

                          context.read<NoteWatcherCubit>().getSingleDayStarted(
                                dateTime: DateTime.now(),
                              );

                          context
                              .read<StatisticChartCubit>()
                              .getSingleDayStarted(
                                amountType: context
                                    .read<StatisticChartCubit>()
                                    .state
                                    .amountType,
                                dateTime: DateTime.now(),
                              );

                          context.router
                              .push(NoteHomeRoute(accountId: account.id));
                        },
                      );
                    }
                  });
            },
            itemCount: state.accounts.length,
          );
        },
        failed: (state) {
          return Text('$state');
        },
      );
    });
  }
}
