import 'package:flutter/material.dart';

import '../../../../application/charts/charts_bloc.dart';
import '../../../core/widgets/manual_amount_type_switch_button.dart';

class AmountTypeSwitchButton extends StatelessWidget {
  AmountTypeSwitchButton();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatisticChartBloc, StatisticChartState>(
        builder: (context, state) {
      return ManualAmountTypeSwitchButton(
        selectedAmountType: state.amountType,
        onIncomePressed: () => context.read<StatisticChartBloc>().add(
              StatisticChartEvent.amountTypeChanged('income'),
            ),
        onExpensePressed: () => context.read<StatisticChartBloc>().add(
              StatisticChartEvent.amountTypeChanged('expense'),
            ),
      );
    });
  }
}
