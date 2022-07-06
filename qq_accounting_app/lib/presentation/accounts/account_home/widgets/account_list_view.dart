import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/accounts/account_form/account_form_cubit.dart';
import 'package:qq_accounting_app/domain/accounts/account.dart';
import 'package:qq_accounting_app/presentation/routes/router.gr.dart';

class AccountsView extends StatelessWidget {
  final List<Account> accounts;
  const AccountsView({
    Key? key,
    required this.accounts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final account = accounts[index];
        // print(account.initialAmount +
        //     context.read<NoteWatcherCubit>().state.totalNetAmount);
        // return FutureBuilder(
        //     future: NoteRepository().computeNetAmount(account.id!),
        //     builder: (context, AsyncSnapshot snapshot) {
        //       if (!snapshot.hasData) {
        //         return Center(child: CircularProgressIndicator());
        //       } else {
        //         int _accountBalance = snapshot.data + account.initialAmount;
        return BlocConsumer<AccountFormCubit, AccountFormState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Stack(
                children: [
                  ListTile(
                    title: Text(account.title),
                    subtitle: Text(account.currencyType),
                    // trailing: Text('${dollorSign} ${_accountBalance}'),
                    onTap: () {
                      // // NOTE: 因為寫了note表單後餘額還是會變動，與其傳入accountBalance，不如直接傳account抓取initialAmount，後續計算邏輯簡單很多
                      // context
                      //     .read<NoteWatcherCubit>()
                      //     .add(NoteWatcherEvent.selectedAccount(account));

                      // context
                      //     .read<StatisticChartCubit>()
                      //     .add(StatisticChartEvent.selectedAccount(account));

                      // context.read<NoteWatcherCubit>().add(
                      //     NoteWatcherEvent.getSingleDayStarted(DateTime.now()));

                      // context.read<StatisticChartCubit>().add(
                      //     StatisticChartEvent.getSingleDayStarted(
                      //         context.read<StatisticChartCubit>().state.amountType,
                      //         DateTime.now()));

                      // context.router.push(NoteHomeRoute(accountId: account.id));
                    },
                    onLongPress: () {
                      context.read<AccountFormCubit>().initAccount(
                            initialAccount: account,
                            isEditing: true,
                          );
                      context.pushRoute(const AccountFormRoute());
                    },
                  ),
                ],
              );
            });
      },
      itemCount: accounts.length,
    );
  }
}
