import 'package:flutter/material.dart';

import 'note_form_body_widgets_exports.dart';

class NoteFormBody extends StatelessWidget {
  const NoteFormBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              const AmountTypeSwitchButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('日期'),
                  const DateTimePickerButton(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('金額'),
                  const AmountEnterButton(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('類別'),
                  const CategoryPickerButton(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('項目名稱'),
                  const ItemNameBox(),
                ],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('備註'),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: const MemoBox(),
                    ),
                  ],
                ),
              ),
            ],
          ).toList(),
        ));
  }
}
