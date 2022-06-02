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
    Radius _borderRadius = Radius.circular(4.0);
    double _buttonWidth = 100.0;
    double _buttonHeight = 40.0;
    Color _unselectedColor = Colors.grey;
    Color _selectedColor;

    if (selectedAmountType == 'expense') {
      _selectedColor = NoteColors.expenseButtonColor;
    } else {
      // 'income'
      _selectedColor = NoteColors.incomeButtonColor;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onExpensePressed,
          child: Container(
            width: _buttonWidth,
            height: _buttonHeight,
            decoration: new BoxDecoration(
              // 按鈕顏色
              color: selectedAmountType == 'expense'
                  ? _selectedColor
                  : _unselectedColor,
              // 圓角
              borderRadius: BorderRadius.only(
                  topLeft: _borderRadius, bottomLeft: _borderRadius),
            ),
            child: Center(child: Text('支出')),
          ),
        ),
        InkWell(
          onTap: onIncomePressed,
          child: Container(
            width: _buttonWidth,
            height: _buttonHeight,
            decoration: new BoxDecoration(
              //背景
              color: selectedAmountType == 'income'
                  ? _selectedColor
                  : _unselectedColor,
              // 圓角
              borderRadius: BorderRadius.only(
                  topRight: _borderRadius, bottomRight: _borderRadius),
            ),
            child: Center(child: Text('收入')),
          ),
        ),
      ],
    );
  }
}
