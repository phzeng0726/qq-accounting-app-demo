import 'package:flutter/material.dart';
import 'package:qq_accounting_app/application/notes/note_blocs.dart';

import '../../../application/accounts/account_blocs.dart';
import 'widgets/account_home_appbar.dart';
import 'widgets/account_home_body.dart';

class AccountHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          // 寫完AccountForm表格時重整
          BlocListener<AccountFormBloc, AccountFormState>(
            listenWhen: (p, c) =>
                p.isSaving != c.isSaving && c.isSaving == false,
            listener: (context, state) {
              context
                  .read<AccountWatcherBloc>()
                  .add(AccountWatcherEvent.getAllStarted());
            },
          ),
          // 寫完NoteForm表格時重整（totalAmount會改變）
          BlocListener<NoteFormBloc, NoteFormState>(
            listenWhen: (p, c) =>
                p.isSaving != c.isSaving && c.isSaving == false,
            listener: (context, state) {
              context
                  .read<AccountWatcherBloc>()
                  .add(AccountWatcherEvent.getAllStarted());
            },
          ),
        ],
        child: Scaffold(
            appBar: AccountHomeAppbar(),
            body: AccountHomeBody()));
  }
}
