import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qq_accounting_app/presentation/notes/note_home/widgets/note_home_appbar.dart';

import '../../../application/charts/charts_bloc.dart';
import '../../../application/notes/note_blocs.dart';
import '../../../domain/core/load_state.dart';
import '../../../localization.dart';
import 'widgets/create_note_form_button.dart';
import 'widgets/datetime_picker_icon_button.dart';
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
              // 重整notes
              context
                  .read<NoteWatcherBloc>()
                  .add(NoteWatcherEvent.getSingleDayStarted(_noteFormDateTime));
              // 重整圖表
              context.read<StatisticChartBloc>().add(
                  StatisticChartEvent.getSingleDayStarted(
                      context.read<StatisticChartBloc>().state.amountType,
                      _noteFormDateTime));
            },
          ),
          // 寫完表格，重整至最新新增的那個表單的日期位置
          BlocListener<NoteFormBloc, NoteFormState>(
            listenWhen: (p, c) =>
                p.isSaving != c.isSaving && c.isSaving == false,
            listener: (context, state) {
              // 重整note
              context.read<NoteWatcherBloc>().add(
                  NoteWatcherEvent.getSingleDayStarted(state.note.dateTime));
              // 重整chart
              context.read<StatisticChartBloc>().add(
                  StatisticChartEvent.getSingleDayStarted(
                      context.read<StatisticChartBloc>().state.amountType,
                      state.note.dateTime));
              // 重整兩者日期
              context
                  .read<NoteWatcherBloc>()
                  .add(NoteWatcherEvent.onDaySelected(
                    state.note.dateTime,
                    state.note.dateTime,
                  ));
              context.read<StatisticChartBloc>().add(
                  StatisticChartEvent.dateTimeChanged(state.note.dateTime));
            },
          ),
          // 從note_home選取日期，重整頁面，下次填寫表單時也要從選取後的日期新增
          BlocListener<NoteWatcherBloc, NoteWatcherState>(
            listenWhen: (p, c) => p.focusedDay != c.focusedDay,
            listener: (context, state) {
              // 更改表單下次的日期
              context
                  .read<NoteFormBloc>()
                  .add(NoteFormEvent.dateTimeChanged(state.focusedDay));
              // 更改chart日期
              context
                  .read<StatisticChartBloc>()
                  .add(StatisticChartEvent.dateTimeChanged(state.focusedDay));
              // 重整note
              context
                  .read<NoteWatcherBloc>()
                  .add(NoteWatcherEvent.getSingleDayStarted(state.focusedDay));
              // 重整圖表

              context.read<StatisticChartBloc>().add(
                  StatisticChartEvent.getSingleDayStarted(
                      context.read<StatisticChartBloc>().state.amountType,
                      state.focusedDay));
            },
          ),
          // 圖表的amountType被更改，重整統計圖
          BlocListener<StatisticChartBloc, StatisticChartState>(
            listenWhen: (p, c) => p.amountType != c.amountType,
            listener: (context, state) {
              context.read<StatisticChartBloc>().add(
                  StatisticChartEvent.getSingleDayStarted(
                      state.amountType, state.dateTime));
            },
          ),
          // TODO 寫完表格後accountBalance會改變，要如何更改
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
