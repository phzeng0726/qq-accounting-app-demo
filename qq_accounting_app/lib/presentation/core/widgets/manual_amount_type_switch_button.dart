import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../../constants.dart';

class ManualAmountTypeSwitchButton extends StatelessWidget {
  final String selectedAmountType;
  final Function() onIncomePressed;
  final Function() onExpensePressed;
  
  const ManualAmountTypeSwitchButton({
    Key? key,
    required this.selectedAmountType,
    required this.onIncomePressed,
    required this.onExpensePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Radius borderRadius = const Radius.circular(4.0);
    double buttonWidth = 100.0;
    double buttonHeight = 40.0;
    Color unselectedColor = Colors.grey;
    bool isSelected = false;
    Color selectedColor;

    final bool isExpense = selectedAmountType == 'expense';
    isExpense ? isSelected = true : isSelected = false; // 假設選擇expense為true

    isSelected
        ? selectedColor = NoteColors.expenseButtonColor
        : selectedColor = NoteColors.incomeButtonColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onExpensePressed,
          child: Container(
            width: buttonWidth,
            height: buttonHeight,
            decoration: BoxDecoration(
              color: isSelected ? selectedColor : unselectedColor,
              borderRadius: BorderRadius.only(
                  topLeft: borderRadius, bottomLeft: borderRadius),
            ),
            child: Center(
                child: Text(
              FlutterI18n.translate(context, "expense"),
            )),
          ),
        ),
        InkWell(
          onTap: onIncomePressed,
          child: Container(
            width: buttonWidth,
            height: buttonHeight,
            decoration: BoxDecoration(
              color: !isSelected ? selectedColor : unselectedColor,
              borderRadius: BorderRadius.only(
                  topRight: borderRadius, bottomRight: borderRadius),
            ),
            child: Center(
              child: Text(
                FlutterI18n.translate(context, "income"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
