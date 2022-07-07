import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../application/accounts/account_form/account_form_cubit.dart';
import '../../application/accounts/account_watcher/account_watcher_cubit.dart';
import '../../domain/accounts/account.dart';
import '../core/widgets/load_status_screen.dart';
import '../routes/router.gr.dart';
import 'widgets/account_overview_body.dart';
import 'widgets/empty_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // NOTE: 寫完AccountForm表格時重整account list view
        BlocListener<AccountFormCubit, AccountFormState>(
          listenWhen: (p, c) =>
              p.status != c.status &&
              c.status == const AccountFormStatus.completed(),
          listener: (context, state) {
            context.read<AccountWatcherCubit>().fetchAccounts();
          },
        ),
      ],
      child: BlocBuilder<AccountWatcherCubit, AccountWatcherState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(FlutterI18n.translate(context, "home.title")),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    // 創新的
                    context.read<AccountFormCubit>().initAccount(
                          initialAccount: Account.empty(),
                          isEditing: false,
                        );
                    context.pushRoute(const AccountFormRoute());
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: LoadStatusScreen(
                    loadStatus: state.status,
                    succeedScreen: state.accounts.isEmpty
                        ? EmptyWidget(
                            key: const Key('__empty__'),
                            text: FlutterI18n.translate(
                                context, "home.emptyAccountListNotice"),
                          )
                        : AccountOverviewBody(
                            accountList: state.accounts,
                            netAmountList: state.netAmountList,
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
