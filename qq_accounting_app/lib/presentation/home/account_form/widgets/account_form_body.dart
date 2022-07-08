import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../../application/accounts/account_form/account_form_cubit.dart';
import 'account_form_body_widgets_export.dart';

class AccountFormBody extends StatelessWidget {
  const AccountFormBody({Key? key}) : super(key: key);

  Widget _buildItemRow({
    required String title,
    required Widget widget,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        widget,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            _buildItemRow(
              title: FlutterI18n.translate(
                  context, "accountForm.accountNameTitle"),
              widget: const TitleBox(),
            ),
            _buildItemRow(
              title: FlutterI18n.translate(
                  context, "accountForm.currencyTypeTitle"),
              widget: const CurrencyTypePickerButton(),
            ),
            _buildItemRow(
              title: FlutterI18n.translate(
                  context, "accountForm.initialAmountTitle"),
              widget: const InitialAmountEnterButton(),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AccountFormCubit>().saved();
                context.router.pop();
              },
              child: Text(
                FlutterI18n.translate(
                    context, "accountForm.accountFormSavedButtonText"),
              ),
            )
          ],
        ).toList(),
      ),
    );
  }
}
