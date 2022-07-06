import 'package:flutter/material.dart';

import '../../../constants.dart';

class ManualAmountTypeSwitchButton extends StatelessWidget {
  const ManualAmountTypeSwitchButton({
    Key? key,
    required this.selectedAmountType,
    required this.onIncomePressed,
    required this.onExpensePressed,
  }) : super(key: key);
  final String selectedAmountType;
  final Function() onIncomePressed;
  final Function() onExpensePressed;

  @override
  Widget build(BuildContext context) {
    Radius borderRadius = const Radius.circular(4.0);
    double buttonWidth = 100.0;
    double buttonHeight = 40.0;
    Color unselectedColor = Colors.grey;
    Color selectedColor;

    if (selectedAmountType == 'expense') {
      selectedColor = NoteColors.expenseButtonColor;
    } else {
      // 'income'
      selectedColor = NoteColors.incomeButtonColor;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onExpensePressed,
          child: Container(
            width: buttonWidth,
            height: buttonHeight,
            decoration: BoxDecoration(
              // 按鈕顏色
              color: selectedAmountType == 'expense'
                  ? selectedColor
                  : unselectedColor,
              // 圓角
              borderRadius: BorderRadius.only(
                  topLeft: borderRadius, bottomLeft: borderRadius),
            ),
            child: const Center(child: Text('支出')),
          ),
        ),
        InkWell(
          onTap: onIncomePressed,
          child: Container(
            width: buttonWidth,
            height: buttonHeight,
            decoration: BoxDecoration(
              //背景
              color: selectedAmountType == 'income'
                  ? selectedColor
                  : unselectedColor,
              // 圓角
              borderRadius: BorderRadius.only(
                  topRight: borderRadius, bottomRight: borderRadius),
            ),
            child: const Center(child: Text('收入')),
          ),
        ),
      ],
    );
  }
}
