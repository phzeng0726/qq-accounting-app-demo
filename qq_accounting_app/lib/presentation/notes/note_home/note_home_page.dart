import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../application/charts/charts_bloc.dart';
import '../../../application/notes/note_blocs.dart';
import 'widgets/note_home_appbar.dart';
import 'widgets/note_home_body.dart';

class NoteHomePage extends StatelessWidget {
  final int? accountId;
  const NoteHomePage({
    Key? key,
    @PathParam() required this.accountId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          // 刪除資料後重整頁面
          BlocListener<NoteActorBloc, NoteActorState>(
            listenWhen: (p, c) => p != c && c == NoteActorState.deleteSuccess(),
            listener: (context, state) {
              DateTime _noteFormDateTime =
                  context.read<NoteFormBloc>().state.note.dateTime;
              String _amountType =
                  context.read<StatisticChartBloc>().state.amountType;
              // 重整note與chart
              context
                  .read<NoteWatcherBloc>()
                  .add(NoteWatcherEvent.getSingleDayStarted(_noteFormDateTime));
              context.read<StatisticChartBloc>().add(
                  StatisticChartEvent.getSingleDayStarted(
                      _amountType, _noteFormDateTime));
            },
          ),
          // 寫完表格，重整至最新新增的那個表單的日期位置
          BlocListener<NoteFormBloc, NoteFormState>(
            listenWhen: (p, c) =>
                p.isSaving != c.isSaving && c.isSaving == false,
            listener: (context, state) {
              DateTime _noteFormDateTime = state.note.dateTime;
              String _amountType =
                  context.read<StatisticChartBloc>().state.amountType;
              // 重整note與chart
              context
                  .read<NoteWatcherBloc>()
                  .add(NoteWatcherEvent.getSingleDayStarted(_noteFormDateTime));
              context.read<StatisticChartBloc>().add(
                  StatisticChartEvent.getSingleDayStarted(
                      _amountType, _noteFormDateTime));

              // 重整note與chart日期
              context.read<NoteWatcherBloc>().add(
                  NoteWatcherEvent.onDaySelected(
                      _noteFormDateTime, _noteFormDateTime));
              context
                  .read<StatisticChartBloc>()
                  .add(StatisticChartEvent.dateTimeChanged(_noteFormDateTime));
            },
          ),
          // 從note_home選取日期，重整頁面，下次填寫表單時也要從選取後的日期新增
          BlocListener<NoteWatcherBloc, NoteWatcherState>(
            listenWhen: (p, c) => p.focusedDay != c.focusedDay,
            listener: (context, state) {
              DateTime _focusedDay = state.focusedDay;
              String _amountType =
                  context.read<StatisticChartBloc>().state.amountType;
              // 更改下次note表單與chart日期
              context
                  .read<NoteFormBloc>()
                  .add(NoteFormEvent.dateTimeChanged(_focusedDay));
              context
                  .read<StatisticChartBloc>()
                  .add(StatisticChartEvent.dateTimeChanged(_focusedDay));

              // 重整note與chart
              context
                  .read<NoteWatcherBloc>()
                  .add(NoteWatcherEvent.getSingleDayStarted(_focusedDay));
              context.read<StatisticChartBloc>().add(
                  StatisticChartEvent.getSingleDayStarted(
                      _amountType, _focusedDay));
            },
          ),
          // 切換chart的amountType時重整chart
          BlocListener<StatisticChartBloc, StatisticChartState>(
            listenWhen: (p, c) => p.amountType != c.amountType,
            listener: (context, state) {
              context.read<StatisticChartBloc>().add(
                  StatisticChartEvent.getSingleDayStarted(
                      state.amountType, state.dateTime));
            },
          ),
        ],
        child: Scaffold(
            // drawer: Drawer(
            //   child: ListView(
            //     // padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            //     children: [
            //       ListTile(
            //           title: Text(
            //             'Hi! $accountId',
            //             style: Theme.of(context).textTheme.subtitle2,
            //           ),
            //           trailing: Theme.of(context).brightness == Brightness.dark
            //               ? const Icon(Icons.wb_sunny)
            //               : const Icon(Icons.brightness_2),
            //           onTap: () => context.read<ThemeCubit>().toggleTheme())
            //     ],
            //   ),
            // ),
            appBar: NoteHomeAppbar(),
            body: NoteHomeBody()));
  }
}
