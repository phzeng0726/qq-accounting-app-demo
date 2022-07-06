import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/accounts/account_form/account_form_cubit.dart';
import '../../../application/accounts/account_watcher/account_watcher_cubit.dart';
import '../../../application/notes/note_form/note_form_cubit.dart';
import 'widgets/account_home_appbar.dart';
import 'widgets/account_home_body.dart';

class AccountHomePage extends StatelessWidget {
  const AccountHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // 寫完AccountForm表格時重整
        BlocListener<AccountFormCubit, AccountFormState>(
          listenWhen: (p, c) =>
              p.status != c.status &&
              c.status == const AccountFormStatus.saving(),
          listener: (context, state) {
            context.read<AccountWatcherCubit>().fetchAccounts();
          },
        ),
        // 寫完NoteForm表格時重整（totalAmount會改變）
        BlocListener<NoteFormCubit, NoteFormState>(
          listenWhen: (p, c) => p.isSaving != c.isSaving && c.isSaving == false,
          listener: (context, state) {
            context.read<AccountWatcherCubit>().fetchAccounts();
          },
        ),
      ],
      child: Scaffold(
        appBar: AccountHomeAppbar(),
        body: const AccountHomeBody(),
      ),
    );
  }
}
