import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ValidatorDialog extends StatelessWidget {
  final String titleStr;
  final String contentStr;
  final String buttonStr;
  const ValidatorDialog({
    Key? key,
    required this.titleStr,
    required this.contentStr,
    required this.buttonStr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(titleStr),
      content: Text(contentStr),
      actions: [
        InkWell(
          onTap: () => context.router.pop(),
          child: Text(buttonStr),
        ),
      ],
    );
  }
}
