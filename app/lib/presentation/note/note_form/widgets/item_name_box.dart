import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/note/note_form/note_form_cubit.dart';

class ItemNameBox extends StatelessWidget {
  const ItemNameBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double buttonHeight = 50.0;
    double buttonWidth = 150.0;

    return BlocBuilder<NoteFormCubit, NoteFormState>(
      // buildWhen: (p, c) => p.signInState != c.signInState,
      builder: (context, state) {
        return Flexible(
          child: SizedBox(
            height: buttonHeight,
            width: buttonWidth,
            child: TextFormField(
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.center,
              initialValue: state.note.itemName,
              onChanged: (value) =>
                  context.read<NoteFormCubit>().itemNameChanged(value),
              validator: (_) =>
                  context.read<NoteFormCubit>().state.note.itemName,
              style: Theme.of(context).textTheme.subtitle1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "未輸入",
              ),
            ),
          ),
        );
      },
    );
  }
}
