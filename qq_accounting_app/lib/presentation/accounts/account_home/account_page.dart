import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/accounts/account_watcher/account_watcher_cubit.dart';
import 'package:qq_accounting_app/application/accounts/cubit/account_form_cubit.dart';
import 'package:qq_accounting_app/domain/accounts/account.dart';
import 'package:qq_accounting_app/presentation/accounts/account_home/widgets/account_list_view.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '帳戶列表',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Column(
        children: [
          Expanded(
              child: BlocBuilder<AccountWatcherCubit, AccountWatcherState>(
                  builder: (context, state) => state.status.when(
                      initial: () => const Text('init'),
                      loading: () => const Center(
                            child: CircularProgressIndicator(
                              color: Colors.black45,
                            ),
                          ),
                      success: () => state.accounts.isEmpty
                          ? const Text('empty')
                          : accountsView(
                              accounts: state.accounts,
                            ),
                      failure: () => const Text('failure')))),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<AccountFormCubit, AccountFormState>(
                builder: (context, state) {
              return ElevatedButton(
                // FIXME: 只是用來測試用看看是否能新增，
                child: Text('+'),
                onPressed: () async {
                  print('editing++');
                  context
                      .read<AccountFormCubit>()
                      .initialized(Account.test(), AccountFormStatus.editing());
                  await context.read<AccountFormCubit>().saved();
                  print('editing completed');

                  print('initial++');
                  context.read<AccountFormCubit>().initialized(
                      Account.empty(), AccountFormStatus.initial());
                  await context.read<AccountFormCubit>().saved();
                  print('initial completed');

                  await context.read<AccountWatcherCubit>().fetchAccounts();
                },
              );
            }),
          )
        ],
      ),
    );
  }
}
