import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/accounts/account_watcher/account_watcher_cubit.dart';
import 'package:qq_accounting_app/application/accounts/account_form/account_form_cubit.dart';
import 'package:qq_accounting_app/presentation/accounts/account_home/widgets/account_list_view.dart';
import 'package:qq_accounting_app/presentation/accounts/account_home/widgets/empty_widget.dart';
import 'package:qq_accounting_app/presentation/routes/router.gr.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

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
        child: Scaffold(
          appBar: AppBar(
            title: const Text('帳戶列表', style: TextStyle(color: Colors.black)),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    print('Initial account form');
                    context.read<AccountFormCubit>().createAccount();
                    context.pushRoute(const AccountFormRoute());
                  },
                  icon: const Icon(Icons.add)),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: BlocBuilder<AccountWatcherCubit, AccountWatcherState>(
                  builder: (context, state) => state.status.when(
                      initial: () => const EmptyWidget(
                            key: Key('__initial__'),
                            text: 'Initial',
                          ),
                      loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                      success: () => state.accounts.isEmpty
                          ? const EmptyWidget(
                              key: Key('__empty__'),
                              text: '帳戶列表為空！快來新增你的第一個帳戶吧！',
                            )
                          : AccountsView(
                              accounts: state.accounts,
                            ),
                      failure: () => const EmptyWidget(
                            key: Key('__fetchDataFailed__'),
                            text: '資料讀取失敗！',
                          )),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: BlocBuilder<AccountFormCubit, AccountFormState>(
                    builder: (context, state) {
                  return Column(
                    children: [
                      // ElevatedButton(
                      //   // FIXME: 只是用來測試用看看是否能新增，
                      //   child: const Text('Editing+'),
                      //   onPressed: () async {
                      //     print('editing++');
                      //     context
                      //         .read<AccountFormCubit>()
                      //         .editAccount(Account.test());
                      //     await context.read<AccountFormCubit>().saved();
                      //     print('editing completed');
                      //   },
                      // ),
                      // ElevatedButton(
                      //   // FIXME: 只是用來測試用看看是否能新增，
                      //   child: const Text('Initial+'),
                      //   onPressed: () async {
                      //     print('initial++');
                      //     context.read<AccountFormCubit>().createAccount();
                      //     await context.read<AccountFormCubit>().saved();
                      //     print('initial completed');
                      //   },
                      // )
                    ],
                  );
                }),
              )
            ],
          ),
        ));
  }
}
