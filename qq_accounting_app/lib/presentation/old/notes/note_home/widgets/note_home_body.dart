// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../application/notes/note_watcher/note_watcher_cubit.dart';
// import 'manual_calendar.dart';
// import 'note_home_body_widgets.dart';

// class NoteHomeBody extends StatelessWidget {
//   const NoteHomeBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
//       builder: (context, state) {
//         return state.loadStatus.map(
//           initial: (_) => Container(),
//           inProgress: (_) => const Center(
//             child: CircularProgressIndicator(),
//           ),
//           succeed: (_) {
//             return Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ListView(
//                   children: [
//                     if (state.focusedDay.toString().substring(0, 10) !=
//                         DateTime.now().toString().substring(0, 10)) ...[
//                       ElevatedButton(
//                           onPressed: () {
//                             context
//                                 .read<NoteWatcherCubit>()
//                                 .onDaySelected(DateTime.now(), DateTime.now());
//                           },
//                           child: const Text('返回當日'))
//                     ],
//                     const ManualCalendar(),
//                     ExpansionTile(
//                       initiallyExpanded: true,
//                       title: const Text('日明細'),
//                       subtitle: const DailyTotalRow(),
//                       leading: const Icon(Icons.receipt_long_outlined),
//                       children: List.generate(
//                           state.notes.length,
//                           (index) => DetailListTile(
//                                 editedNote: state.notes[index],
//                               )),
//                     ),
//                     ExpansionTile(
//                         initiallyExpanded: true,
//                         title: const Text('日統計'),
//                         leading: const Icon(Icons.data_usage_outlined),
//                         // trailing: ,
//                         children: [
//                           const AmountTypeSwitchButton(),
//                           AmountCircularChart(state.notes)
//                         ]),
//                   ],
//                 ),
//               ),
//             );
//           },
//           failed: (state) {
//             return Text('$state');
//           },
//         );
//       },
//     );
//   }
// }
