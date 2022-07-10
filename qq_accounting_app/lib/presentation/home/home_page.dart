import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../application/account/account_form/account_form_cubit.dart';
import '../../application/account/account_watcher/account_watcher_cubit.dart';
import '../../application/core/navigation/navigation_cubit.dart';
import '../../domain/account/account.dart';
import '../core/widgets/empty_widget.dart';
import '../core/widgets/load_status_screen.dart';
import '../routes/router.gr.dart';
import 'widgets/account_overview_body.dart';

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
              title: Text(
                FlutterI18n.translate(context, "home.title"),
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  onPressed: () {
                    // 創新的
                    context.read<AccountFormCubit>().initAccount(
                          initialAccount: Account.empty(),
                          isEditing: false,
                        );
                    context.pushRoute(const AccountFormRoute());
                    context.read<NavigationCubit>().pushOrPopPage();
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            body: LoadStatusScreen(
              loadStatus: state.status,
              succeedScreen: state.accounts.isEmpty
                  ? EmptyWidget(
                      text: FlutterI18n.translate(
                          context, "home.emptyAccountListNotice"),
                    )
                  : const AccountOverviewBody(),
            ),
          );
        },
      ),
    );
  }
}
