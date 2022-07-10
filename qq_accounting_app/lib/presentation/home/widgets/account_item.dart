import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/account/account_form/account_form_cubit.dart';
import '../../../application/account/account_watcher/account_watcher_cubit.dart';
import '../../../application/core/navigation/navigation_cubit.dart';
import '../../../constants.dart';
import '../../../domain/account/account.dart';
import '../../../domain/core/amount_format.dart';
import '../../routes/router.gr.dart';

class AccountItem extends StatelessWidget {
  final Account account;
  final int accountBalance;
  const AccountItem({
    Key? key,
    required this.account,
    required this.accountBalance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: kDefaultBorderRadius,
            bottomRight: kDefaultBorderRadius,
          ),
        ),
        child: ListTile(
          leading: Icon(
            Icons.attach_money,
            size: 40.0,
            color:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
          ),
          title: Text(account.title),
          subtitle: Text(account.currencyType),
          trailing: Text(
              '$dollarSign ${AmountFormat(accountBalance).toFormatString()}'),
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
        ),
      ),
    );
  }
}
