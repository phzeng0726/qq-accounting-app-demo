import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../application/accounts/account_blocs.dart';
import '../../../../application/notes/note_watcher/note_watcher_bloc.dart';
import '../../../../domain/notes/note.dart';
// https://pub.dev/packages/table_calendar

class ManualCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
        builder: (context, state) {
      return TableCalendar<Note>(
        locale: 'zh_CN',
        firstDay: DateTime(2020, 1, 1),
        lastDay: DateTime(2030, 1, 1),
        focusedDay: state.focusedDay,
        selectedDayPredicate: (day) => isSameDay(state.selectedDay, day),
        // rangeStartDay: state.rangeStart,
        // rangeEndDay: state.rangeEnd,
        calendarFormat: state.calendarFormat,
        // rangeSelectionMode: state.rangeSelectionMode,
        availableCalendarFormats: const {
          CalendarFormat.month: '顯示為月',
          CalendarFormat.week: '顯示為週',
        },
        // eventLoader: _getEventsForDay,
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false, // 別月的日期要不要顯示
        ),
        onDaySelected: (selectedDay, focusedDay) => context
            .read<NoteWatcherBloc>()
            .add(NoteWatcherEvent.onDaySelected(selectedDay, focusedDay)),
        // onRangeSelected: (startTime, endTime, focusedDay) => context
        //     .read<NoteWatcherBloc>()
        //     .add(NoteWatcherEvent.onRangeSelected(
        //         startTime, endTime, focusedDay)),
        onFormatChanged: (format) => context
            .read<NoteWatcherBloc>()
            .add(NoteWatcherEvent.onFormatChanged(format)),
        // onPageChanged: (focusedDay) {
        //   _focusedDay = focusedDay;
        // },
      );
    });
  }
}
