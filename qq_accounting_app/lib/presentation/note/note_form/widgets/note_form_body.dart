import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:qq_accounting_app/constants.dart';
import 'package:qq_accounting_app/presentation/core/widgets/item_row_widget.dart';

import 'note_form_body_widgets_exports.dart';

class NoteFormBody extends StatelessWidget {
  const NoteFormBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            Column(
              children: const [
                AmountTypeSwitchButton(),
                SizedBox(
                  height: kDefaultHeightSize,
                ),
              ],
            ),
            ItemRowWidget(
              title: FlutterI18n.translate(context, "note.form.date"),
              widget: const DateTimePickerButton(),
            ),
            ItemRowWidget(
              title: FlutterI18n.translate(context, "note.form.amount"),
              widget: const AmountEnterButton(),
            ),
            ItemRowWidget(
              title: FlutterI18n.translate(context, "note.form.category.title"),
              widget: const CategoryPickerButton(),
            ),
            ItemRowWidget(
              title: FlutterI18n.translate(context, "note.form.itemName"),
              widget: const ItemNameBox(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kDefaultHeightSize / 2,
                ),
                Text(FlutterI18n.translate(context, "note.form.memo")),
                const SizedBox(
                  height: kDefaultHeightSize / 2,
                ),
                const MemoBox(),
              ],
            ),
          ],
        ).toList(),
      ),
    );
  }
}
