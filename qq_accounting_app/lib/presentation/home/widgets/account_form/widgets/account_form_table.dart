import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import 'currency_type_picker_button.dart';
import 'initial_amount_enter_button.dart';
import 'title_box.dart';

class AccountFormTable extends StatelessWidget {
  const AccountFormTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  FlutterI18n.translate(
                      context, "home.accountForm.accountTitle"),
                ),
                const TitleBox(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  FlutterI18n.translate(
                      context, "home.accountForm.currencyType"),
                ),
                const CurrencyTypePickerButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  FlutterI18n.translate(
                      context, "home.accountForm.initialAmount"),
                ),
                const InitialAmountEnterButton(),
              ],
            ),
          ],
        ).toList(),
      ),
    );
  }
}
