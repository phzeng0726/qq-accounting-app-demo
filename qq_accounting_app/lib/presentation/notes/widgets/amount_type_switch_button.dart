import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/charts/statistic_chart/statistic_chart_cubit.dart';
import '../../core/widgets/manual_amount_type_switch_button.dart';

class AmountTypeSwitchButton extends StatelessWidget {
  const AmountTypeSwitchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatisticChartCubit, StatisticChartState>(
        builder: (context, state) {
      return ManualAmountTypeSwitchButton(
        selectedAmountType: state.amountType,
        onIncomePressed: () =>
            context.read<StatisticChartCubit>().amountTypeChanged('income'),
        onExpensePressed: () =>
            context.read<StatisticChartCubit>().amountTypeChanged('expense'),
      );
    });
  }
}
