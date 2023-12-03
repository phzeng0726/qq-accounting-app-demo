// import 'package:auto_route/auto_route.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_i18n/flutter_i18n.dart';

// import '../../../../application/note/note_form/note_form_cubit.dart';
// import '../../../../application/note/note_watcher/note_watcher_cubit.dart';
// import '../../../../constants.dart';
// import 'note_delete_button.dart';

// class NoteFormAppBar extends StatelessWidget with PreferredSizeWidget {
//   const NoteFormAppBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NoteFormCubit, NoteFormState>(
//       builder: (context, state) {
//         final note = state.note;
//         final isEditing = state.isEditing;

//         return AppBar(
//           backgroundColor: note.amountType == 'expense'
//               ? NoteColors.expenseBackgroundColor
//               : NoteColors.incomeBackgroundColor,
//           centerTitle: true,
//           title: isEditing
//               ? Text(FlutterI18n.translate(context, "note.form.editTitle"))
//               : Text(FlutterI18n.translate(context, "note.form.createTitle")),
//           elevation: 0,
//           actions: [
//             if (isEditing) ...[
//               NoteDeleteButton(
//                 note: note,
//               ),
//             ],
//             IconButton(
//               icon: const Icon(Icons.pets),
//               onPressed: () async {
//                 // 當天的淨收支
//                 int initialAmount = context
//                     .read<NoteWatcherCubit>()
//                     .state
//                     .account
//                     .initialAmount;
//                 await context
//                     .read<NoteFormCubit>()
//                     .saved(initialAmount: initialAmount);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
