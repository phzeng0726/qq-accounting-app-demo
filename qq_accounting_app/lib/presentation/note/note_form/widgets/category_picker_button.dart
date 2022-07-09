import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/note/note_form/note_form_cubit.dart';
import '../../../core/widgets/manual_button.dart';
import 'category_sheet.dart';

class CategoryPickerButton extends StatelessWidget {
  const CategoryPickerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormCubit, NoteFormState>(
      builder: (context, state) {
        return ManualButton(
          child: Text(state.note.category),
          onPressed: () async {
            await showModalBottomSheet(
              context: context,
              builder: (builder) {
                return CategorySheet(
                  amountType: state.note.amountType,
                );
              },
            );
          },
        );
      },
    );
  }
}
