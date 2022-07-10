import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/account/account_watcher/account_watcher_cubit.dart';
import '../../../constants.dart';
import 'account_item.dart';
import 'total_balance_widget.dart';

class AccountOverviewBody extends StatelessWidget {
  const AccountOverviewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountWatcherCubit, AccountWatcherState>(
      builder: (context, state) {
        Widget _buildAccountListView() {
          return ListView.builder(
            itemCount: state.accounts.length,
            itemBuilder: (context, index) {
              final account = state.accounts[index];
              final accountBalance =
                  state.netAmountList[index] + account.initialAmount;
              return AccountItem(
                account: account,
                accountBalance: accountBalance,
              );
            },
          );
        }

        return Column(
          children: [
            Expanded(
              child: TotalBalanceWidget(
                totalBalance: state.totalBalance,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 3 / 5,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: kDefaultBorderRadius,
                    topRight: kDefaultBorderRadius,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    kDefaultPadding,
                    kDefaultPadding * 2,
                    kDefaultPadding,
                    kDefaultPadding,
                  ),
                  child: _buildAccountListView(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
