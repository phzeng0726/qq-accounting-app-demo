import 'package:flutter/material.dart';

import 'package:qq_accounting_app/presentation/accounts/account_form/widgets/account_form_table.dart';

class AccountFormPage extends StatelessWidget {
  const AccountFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '帳戶列表',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const AccountFormTable(),
    );
  }
}
