import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:math_expressions/math_expressions.dart';

import '../../../../application/note/note_form/note_form_cubit.dart';
import '../../../../constants.dart';
import 'amount_type_switch_button.dart';

class AmountCalculator extends StatelessWidget {
  const AmountCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<NoteFormCubit, NoteFormState>(
//         // buildWhen: (p, c) => p.signInState != c.signInState,
        builder: (context, state) {
      void numClick(String text) {
        String tempAmount = state.tempAmount;
        context.read<NoteFormCubit>().tempAmountChanged(tempAmount += text);
      }

      void clear(String text) {
        context.read<NoteFormCubit>().tempAmountChanged('');
      }

      void evaluate(String text) {
        Parser p = Parser();
        Expression exp = p.parse(state.tempAmount);
        ContextModel cm = ContextModel();

        context.read<NoteFormCubit>().tempAmountChanged(
            exp.evaluate(EvaluationType.REAL, cm).round().toString());
      }

      return Container(
        width: mWidth,
        height: mHeight * 0.75,
        color: state.note.amountType == 'expense'
            ? NoteColors.expenseBackgroundColor
            : NoteColors.incomeBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AmountTypeSwitchButton(),
                  ElevatedButton(
                    onPressed: () => clear(''),
                    child: const Text('C'),
                  ),
                ],
              ),
              Container(
                width: mWidth,
                height: 50,
                color: Colors.white.withOpacity(0.2),
                child: Text(
                  state.tempAmount,
                  style: const TextStyle(fontSize: 28.0),
                  textAlign: TextAlign.right,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () => numClick('7'),
                              child: const Text('7'),
                            ),
                            ElevatedButton(
                              onPressed: () => numClick('8'),
                              child: const Text('8'),
                            ),
                            ElevatedButton(
                              onPressed: () => numClick('9'),
                              child: const Text('9'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () => numClick('4'),
                              child: const Text('4'),
                            ),
                            ElevatedButton(
                              onPressed: () => numClick('5'),
                              child: const Text('5'),
                            ),
                            ElevatedButton(
                              onPressed: () => numClick('6'),
                              child: const Text('6'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () => numClick('1'),
                              child: const Text('1'),
                            ),
                            ElevatedButton(
                              onPressed: () => numClick('2'),
                              child: const Text('2'),
                            ),
                            ElevatedButton(
                              onPressed: () => numClick('3'),
                              child: const Text('3'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () => numClick('0'),
                              child: const Text('0'),
                            ),
                            ElevatedButton(
                              onPressed: () => numClick('.'),
                              child: const Text('.'),
                            ),
                            ElevatedButton(
                              onPressed: () => evaluate('='),
                              child: const Text('='),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () => numClick('/'),
                          child: const Text('/'),
                        ),
                        ElevatedButton(
                          onPressed: () => numClick('*'),
                          child: const Text('*'),
                        ),
                        ElevatedButton(
                          onPressed: () => numClick('-'),
                          child: const Text('-'),
                        ),
                        ElevatedButton(
                          onPressed: () => numClick('+'),
                          child: const Text('+'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context
                                .read<NoteFormCubit>()
                                .amountSaved(state.tempAmount);
                            context.router.pop();
                          },
                          child: Text(
                            FlutterI18n.translate(context,
                                "amountCalculatorSavedButtonText"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
