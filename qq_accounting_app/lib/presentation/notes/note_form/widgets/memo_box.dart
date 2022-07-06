import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/notes/note_form/note_form_cubit.dart';

class MemoBox extends StatelessWidget {
  const MemoBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormCubit, NoteFormState>(
      // buildWhen: (p, c) => p.signInState != c.signInState,
      builder: (context, state) {
        return TextFormField(
          maxLines: null,
          minLines: 5,
          initialValue: state.note.memo,
          onChanged: (value) => context
              .read<NoteFormCubit>()
              .memoChanged(value),
          validator: (_) => context.read<NoteFormCubit>().state.note.memo,
          autocorrect: false,
          style: Theme.of(context).textTheme.subtitle1,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "記點甚麼吧~",
          ),
        );
      },
    );
  }
}
