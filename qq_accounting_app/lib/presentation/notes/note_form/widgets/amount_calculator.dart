import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';

import '../../../../application/notes/note_blocs.dart';
import 'amount_type_switch_button.dart';

class AmountCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<NoteFormBloc, NoteFormState>(
//         // buildWhen: (p, c) => p.signInState != c.signInState,
        builder: (context, state) {
      void numClick(String text) {
        String _tempAmount = state.tempAmount;
        context
            .read<NoteFormBloc>()
            .add(NoteFormEvent.tempAmountChanged(_tempAmount += text));
      }

      void clear(String text) {
        context.read<NoteFormBloc>().add(NoteFormEvent.tempAmountChanged(''));
      }

      void evaluate(String text) {
        Parser p = Parser();
        Expression exp = p.parse(state.tempAmount);
        ContextModel cm = ContextModel();

        context.read<NoteFormBloc>().add(NoteFormEvent.tempAmountChanged(
            exp.evaluate(EvaluationType.REAL, cm).round().toString()));
      }

      return Container(
        width: mWidth,
        height: mHeight * 0.75,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AmountTypeSwitchButton(),
                    ElevatedButton(
                      onPressed: () => clear(''),
                      child: Text('C'),
                    ),
                  ],
                ),
                Container(
                  width: mWidth,
                  height: 50,
                  color: Colors.white.withOpacity(0.2),
                  child: Text(
                    state.tempAmount,
                    style: TextStyle(fontSize: 28.0),
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
                                child: Text('7'),
                              ),
                              ElevatedButton(
                                onPressed: () => numClick('8'),
                                child: Text('8'),
                              ),
                              ElevatedButton(
                                onPressed: () => numClick('9'),
                                child: Text('9'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () => numClick('4'),
                                child: Text('4'),
                              ),
                              ElevatedButton(
                                onPressed: () => numClick('5'),
                                child: Text('5'),
                              ),
                              ElevatedButton(
                                onPressed: () => numClick('6'),
                                child: Text('6'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () => numClick('1'),
                                child: Text('1'),
                              ),
                              ElevatedButton(
                                onPressed: () => numClick('2'),
                                child: Text('2'),
                              ),
                              ElevatedButton(
                                onPressed: () => numClick('3'),
                                child: Text('3'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () => numClick('0'),
                                child: Text('0'),
                              ),
                              ElevatedButton(
                                onPressed: () => numClick('.'),
                                child: Text('.'),
                              ),
                              ElevatedButton(
                                onPressed: () => evaluate('='),
                                child: Text('='),
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
                            child: Text('/'),
                          ),
                          ElevatedButton(
                            onPressed: () => numClick('*'),
                            child: Text('*'),
                          ),
                          ElevatedButton(
                            onPressed: () => numClick('-'),
                            child: Text('-'),
                          ),
                          ElevatedButton(
                            onPressed: () => numClick('+'),
                            child: Text('+'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<NoteFormBloc>().add(
                                  NoteFormEvent.amountSaved(state.tempAmount));
                              context.router.pop();
                            },
                            child: Text('完成'), // TODO 只有送出的時候才要改popup外的那個金額
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
