import 'package:flutter/material.dart';

import 'package:qq_accounting_app/application/notes/note_blocs.dart';

class ItemNameBox extends StatelessWidget {
  const ItemNameBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _buttonHeight = 50.0;
    double _buttonWidth = 150.0;

    return BlocBuilder<NoteFormBloc, NoteFormState>(
      // buildWhen: (p, c) => p.signInState != c.signInState,
      builder: (context, state) {
        return Flexible(
          child: Container(
            height: _buttonHeight,
            width: _buttonWidth,
            child: TextFormField(
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.center,
              initialValue: state.note.itemName,
              onChanged: (value) => context
                  .read<NoteFormBloc>()
                  .add(NoteFormEvent.itemNameChanged(value)),
              validator: (_) =>
                  context.read<NoteFormBloc>().state.note.itemName,
              style: Theme.of(context).textTheme.subtitle1,
              decoration: InputDecoration(
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
