import 'package:flutter/material.dart';

class ItemRowWidget extends StatelessWidget {
  final String title;
  final Widget widget;
  const ItemRowWidget({
    Key? key,
    required this.title,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        widget,
      ],
    );
  }
}
