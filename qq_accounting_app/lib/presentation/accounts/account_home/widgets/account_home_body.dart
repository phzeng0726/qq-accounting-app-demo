import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:qq_accounting_app/application/charts/statistic_chart/statistic_chart_bloc.dart';

import '../../../../application/accounts/account_blocs.dart';
import '../../../../application/notes/note_watcher/note_watcher_bloc.dart';
import '../../../../constants.dart';
import '../../../../infrastructure/notes/note_repository.dart';
import '../../../routes/router.gr.dart';

class AccountHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountWatcherBloc, AccountWatcherState>(
        builder: (context, state) {
      return state.loadStatus.map(
        initial: (_) => Container(),
        inProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        success: (_) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final account = state.accounts[index];
              // print(account.initialAmount +
              //     context.read<NoteWatcherBloc>().state.totalNetAmount);
              return FutureBuilder(
                  future: NoteRepository().computeNetAmount(account.id!),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      int _accountBalance =
                          snapshot.data + account.initialAmount;
                      return ListTile(
                        title: Text('${account.title}'),
                        subtitle: Text('${account.currencyType}'),
                        trailing: Text('${dollorSign} ${_accountBalance}'),
                        onTap: () {
                          // NOTE: 因為寫了note表單後餘額還是會變動，與其傳入accountBalance，不如直接傳account抓取initialAmount，後續計算邏輯簡單很多
                          context
                              .read<NoteWatcherBloc>()
                              .add(NoteWatcherEvent.selectedAccount(account));

                          context.read<StatisticChartBloc>().add(
                              StatisticChartEvent.selectedAccount(account));

                          context.read<NoteWatcherBloc>().add(
                              NoteWatcherEvent.getSingleDayStarted(
                                  DateTime.now()));

                          context.read<StatisticChartBloc>().add(
                              StatisticChartEvent.getSingleDayStarted(
                                  context
                                      .read<StatisticChartBloc>()
                                      .state
                                      .amountType,
                                  DateTime.now()));

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
        failure: (state) {
          return Text('${state}');
        },
      );
    });
  }
}
