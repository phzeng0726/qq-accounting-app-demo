import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../../../application/account/account_form/account_form_cubit.dart';
import '../../../../constants.dart';
import '../../../core/widgets/item_row_widget.dart';
import 'account_form_body_widgets_export.dart';

class AccountFormBody extends StatelessWidget {
  const AccountFormBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ItemRowWidget(
              title: FlutterI18n.translate(
                  context, "accountForm.accountNameTitle"),
              widget: const TitleBox(),
            ),
            ItemRowWidget(
              title: FlutterI18n.translate(
                  context, "accountForm.currencyTypeTitle"),
              widget: const CurrencyTypePickerButton(),
            ),
            ItemRowWidget(
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
