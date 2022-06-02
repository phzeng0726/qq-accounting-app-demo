import 'package:flutter/material.dart';

import '../../../../application/notes/note_blocs.dart';

class MemoBox extends StatelessWidget {
  const MemoBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      // buildWhen: (p, c) => p.signInState != c.signInState,
      builder: (context, state) {
        return TextFormField(
          maxLines: null,
          minLines: 5,
          initialValue: state.note.memo,
          onChanged: (value) => context
              .read<NoteFormBloc>()
              .add(NoteFormEvent.memoChanged(value)),
          validator: (_) => context.read<NoteFormBloc>().state.note.memo,
          autocorrect: false,
          style: Theme.of(context).textTheme.subtitle1,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "記點甚麼吧~",
          ),
        );
      },
    );
  }
}
