import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/note/note_form/note_form_cubit.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormCubit, NoteFormState>(
      // buildWhen: (p, c) => p.signInState != c.signInState,
      builder: (context, state) {
        return TextFormField(
          maxLength: 10,
          initialValue: state.categoryBoxText,
          onChanged: (value) =>
              context.read<NoteFormCubit>().categoryBoxChanged(value),
          validator: (_) => context.read<NoteFormCubit>().state.categoryBoxText,
          autocorrect: false,
          style: Theme.of(context).textTheme.subtitle1,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.edit),
            border: OutlineInputBorder(),
          ),
        );
      },
    );
  }
}
