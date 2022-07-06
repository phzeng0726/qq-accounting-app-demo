// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../application/notes/note_form/note_form_cubit.dart';
// import '../../../../application/notes/note_watcher/note_watcher_cubit.dart';
// import '../../../../constants.dart';
// import '../../../../domain/notes/note.dart';
// import '../../../../infrastructure/notes/note_repository.dart';
// import 'note_delete_button.dart';

// class NoteFormAppBar extends StatelessWidget with PreferredSizeWidget {
//   final Note note;
//   final bool isEditing;
//   const NoteFormAppBar({
//     Key? key,
//     required this.note,
//     required this.isEditing,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//         backgroundColor: note.amountType == 'expense'
//             ? NoteColors.expenseBackgroundColor
//             : NoteColors.incomeBackgroundColor,
//         centerTitle: true,
//         title: isEditing ? const Text('編輯') : const Text('輸入'),
//         elevation: 0,
//         actions: [
//           if (isEditing) ...[
//             NoteDeleteButton(
//               note: note,
//             ),
//           ],
//           IconButton(
//             icon: const Icon(Icons.pets),
//             onPressed: () async {
//               int initialAmount =
//                   context.read<NoteWatcherCubit>().state.account.initialAmount;
//               int netAmount =
//                   await NoteRepository().computeNetAmount(note.accountId);
//               int accountBalance = initialAmount + netAmount;

//               if (note.amount <= 0) {
//                 // show the dialog
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: const Text("發生錯誤"),
//                       content: Text("金額輸入值需大於 $dollarSign 0"),
//                       actions: [
//                         InkWell(
//                           onTap: () => context.router.pop(),
//                           child: const Text('OK'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               } else if (note.amountType == 'expense' &&
//                   note.amount > accountBalance) {
//                 // show the dialog
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: const Text("發生錯誤"),
//                       content: Text("帳戶餘額（$dollarSign $accountBalance）不足"),
//                       actions: [
//                         InkWell(
//                           onTap: () => context.router.pop(),
//                           child: const Text('OK'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               } else {
//                 context.read<NoteFormCubit>().saved();
//                 context.router.pop();
//               }
//             },
//           ),
//         ]);
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
