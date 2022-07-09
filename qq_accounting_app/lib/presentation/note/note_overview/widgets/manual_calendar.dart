import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/theme/theme_cubit.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../../domain/note/note.dart';
// https://pub.dev/packages/table_calendar

class ManualCalendar extends StatelessWidget {
  const ManualCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherCubit, NoteWatcherState>(
        builder: (context, state) {
      return TableCalendar<Note>(
        locale: context.watch<ThemeCubit>().state.currentLang.languageCode,
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
        calendarStyle: const CalendarStyle(
          outsideDaysVisible: false, // 別月的日期要不要顯示
        ),
        onDaySelected: (selectedDay, focusedDay) => context
            .read<NoteWatcherCubit>()
            .onDaySelected(selectedDay, focusedDay),
        // onRangeSelected: (startTime, endTime, focusedDay) => context
        //     .read<NoteWatcherCubit>()
        //     .add(NoteWatcherEvent.onRangeSelected(
        //         startTime, endTime, focusedDay)),
        onFormatChanged: (format) =>
            context.read<NoteWatcherCubit>().onFormatChanged(format),
        // onPageChanged: (focusedDay) {
        //   _focusedDay = focusedDay;
        // },
      );
    });
  }
}
