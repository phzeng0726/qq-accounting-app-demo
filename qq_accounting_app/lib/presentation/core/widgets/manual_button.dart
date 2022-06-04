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
    double _buttonHeight = 50.0;
    double _buttonWidth = 150.0;
    Radius _borderRadius = Radius.circular(4.0); // 圓角
    Color _buttonColor = Colors.white.withOpacity(0.2); // 按鈕顏色

    return InkWell(
      onTap: onPressed,
      child: Container(
          height: _buttonHeight,
          width: _buttonWidth,
          decoration: new BoxDecoration(
            color: _buttonColor,
            borderRadius: BorderRadius.all(_borderRadius),
          ),
          child: Center(child: child)),
    );
  }
}
