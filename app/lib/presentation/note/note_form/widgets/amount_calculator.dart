// ignore_for_file: unrelated_type_equality_checks

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

      Widget _buildButton({
        required String numString,
        required void Function()? onPressed,
      }) {
        return ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              state.note.amountType == 'expense'
                  ? NoteColors.expenseButtonColor
                  : NoteColors.incomeButtonColor,
            ),
          ),
          child: Text(numString),
        );
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
                  _buildButton(
                    numString: 'C',
                    onPressed: () => clear(''),
                  ),
                ],
              ),
              Container(
                width: mWidth,
                height: 50,
                color: Colors.white.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    state.tempAmount,
                    style: const TextStyle(fontSize: 28.0),
                    textAlign: TextAlign.right,
                  ),
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
                            _buildButton(
                              numString: '7',
                              onPressed: () => numClick('7'),
                            ),
                            _buildButton(
                              numString: '8',
                              onPressed: () => numClick('8'),
                            ),
                            _buildButton(
                              numString: '9',
                              onPressed: () => numClick('9'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildButton(
                              numString: '4',
                              onPressed: () => numClick('4'),
                            ),
                            _buildButton(
                              numString: '5',
                              onPressed: () => numClick('5'),
                            ),
                            _buildButton(
                              numString: '6',
                              onPressed: () => numClick('6'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildButton(
                              numString: '1',
                              onPressed: () => numClick('1'),
                            ),
                            _buildButton(
                              numString: '2',
                              onPressed: () => numClick('2'),
                            ),
                            _buildButton(
                              numString: '3',
                              onPressed: () => numClick('3'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildButton(
                              numString: '0',
                              onPressed: () => numClick('0'),
                            ),
                            _buildButton(
                              numString: '.',
                              onPressed: () => numClick('.'),
                            ),
                            _buildButton(
                              numString: '=',
                              onPressed: () => evaluate('='),
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
                        _buildButton(
                          numString: '/',
                          onPressed: () => numClick('/'),
                        ),
                        _buildButton(
                          numString: '*',
                          onPressed: () => numClick('*'),
                        ),
                        _buildButton(
                          numString: '-',
                          onPressed: () => numClick('-'),
                        ),
                        _buildButton(
                          numString: '+',
                          onPressed: () => numClick('+'),
                        ),
                        _buildButton(
                          numString: FlutterI18n.translate(
                            context,
                            "amountCalculatorSavedButtonText",
                          ),
                          onPressed: () {
                            context
                                .read<NoteFormCubit>()
                                .amountSaved(state.tempAmount);
                            context.router.pop();
                          },
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
