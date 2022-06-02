// import 'package:flutter/material.dart';
// 
// import 'package:qq_accounting_app/application/notes/note_watcher/note_watcher_bloc.dart';
// import 'package:qq_accounting_app/presentation/home/widgets/temp.dart';

// import '../../../application/accounting/account/account_bloc.dart';
// import '../../../constants.dart';

// class DailyDetailsTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
//         // buildWhen: (p, c) => p.signInState != c.signInState,
//         builder: (context, state) {
//       return ExpansionTile(
//         initiallyExpanded: true,
//         title: Text('日明細'),
//         subtitle: Temp(),
//         leading: Icon(Icons.receipt_long_outlined
//             // Icons.request_page_outlined,
//             ),
//         // trailing: ,
//         children: List.generate(
//             state.notes.length,
//             (index) => new ListTile(
//                   title: Text('${state.notes[index].itemName}'),
//                   subtitle: Text('${state.notes[index].category}'),
//                   trailing: Text(
//                       '${dollorSign} ${state.notes[index].amount}',
//                       style: TextStyle(
//                           color: state.notes[index].amountType == 'expense'
//                               ? NoteColors.expenseColor
//                               : NoteColors.incomeColor)),
//                   onLongPress: () {
//                     print('$index');
//                   },
//                 )),
//       );
//     });
//   }
// }
