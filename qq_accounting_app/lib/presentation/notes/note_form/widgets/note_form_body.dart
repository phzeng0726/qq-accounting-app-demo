import 'package:flutter/material.dart';

import 'note_form_body_widgets.dart';


class NoteFormBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: ListTile.divideTiles(
                context: context,
                tiles: [
                  AmountTypeSwitchButton(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('日期'),
                      DateTimePickerButton(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('金額'),
                      AmountEnterButton(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('類別'),
                      CategoryPickerButton(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('項目名稱'),
                      ItemNameBox(),
                    ],
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('備註'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: MemoBox(),
                        ),
                      ],
                    ),
                  ),
                ],
              ).toList(),
            ));
  }
}