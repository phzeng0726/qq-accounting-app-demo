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
    double stackHeight = MediaQuery.of(context).size.height;
    double stackWidth = MediaQuery.of(context).size.width;
    double radiusSize = stackWidth / 4;
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

        return Container(
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: stackHeight * 0.7,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: const BorderRadius.only(
                        topLeft: kDefaultBorderRadius,
                        topRight: kDefaultBorderRadius,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        kDefaultPadding,
                        radiusSize + kDefaultPadding * 2,
                        kDefaultPadding,
                        kDefaultPadding,
                      ),
                      child: _buildAccountListView(),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: stackHeight * 0.7 - radiusSize,
                left: (stackWidth - radiusSize * 2) / 2,
                child: TotalBalanceWidget(
                  totalBalance: state.totalBalance,
                  radiusSize: radiusSize,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
