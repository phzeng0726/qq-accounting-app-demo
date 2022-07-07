import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String text;
  const EmptyWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
      ),
    );
  }
}
