import 'package:flutter/material.dart';

class ManualButton extends StatelessWidget {
  const ManualButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    double buttonHeight = 50.0;
    double buttonWidth = 150.0;
    Radius borderRadius = const Radius.circular(4.0); // 圓角
    Color buttonColor = Colors.white.withOpacity(0.2); // 按鈕顏色

    return InkWell(
      onTap: onPressed,
      child: Container(
          height: buttonHeight,
          width: buttonWidth,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.all(borderRadius),
          ),
          child: Center(child: child)),
    );
  }
}
