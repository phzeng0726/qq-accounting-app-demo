// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../application/notes/note_form/note_form_cubit.dart';
// import '../../../../application/notes/note_watcher/note_watcher_cubit.dart';
// import '../../../../domain/notes/note.dart';
// import '../../../routes/router.gr.dart';

// class CreateNoteFormButton extends StatelessWidget {
//   const CreateNoteFormButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         DateTime noteFormDateTime =
//             context.read<NoteWatcherCubit>().state.focusedDay;

//         int accountId = context.read<NoteWatcherCubit>().state.account.id!;

//         Note initNote = NoteFormState.initial().note.copyWith(
//               accountId: accountId,
//               dateTime: noteFormDateTime,
//             );

//         context.read<NoteFormCubit>().initialized(initNote, false);

//         context.pushRoute(const NoteFormRoute());
//       },
//       icon: const Icon(Icons.add),
//     );
//   }
// }
