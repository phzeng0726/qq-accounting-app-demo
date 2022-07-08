import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:qq_accounting_app/presentation/notes/note_overview/widgets/note_overview_body.dart';

import '../../../../application/charts/statistic_chart/statistic_chart_cubit.dart';
import '../../../../application/notes/note_actor/note_actor_cubit.dart';
import '../../../../application/notes/note_form/note_form_cubit.dart';
import '../../../../application/notes/note_watcher/note_watcher_cubit.dart';
import '../../../domain/notes/note.dart';
import '../../routes/router.gr.dart';

// TODO note form 初始化有問題，應該是provider放錯
// TODO 寫完表格後accountBalance會改變，要如何更改
// TODO 明細金額無法顯示
class NoteOverviewPage extends StatelessWidget {
  final int? accountId;
  final String accountName;
  const NoteOverviewPage({
    Key? key,
    required this.accountId,
    required this.accountName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        // 刪除資料後重整頁面
        BlocListener<NoteActorCubit, NoteActorState>(
          listenWhen: (p, c) =>
              p != c && c == const NoteActorState.deleteSuccess(),
          listener: (context, state) {
            DateTime noteFormDateTime =
                context.read<NoteFormCubit>().state.note.dateTime;
            // 重整notes
            context.read<NoteWatcherCubit>().getSingleDayStarted(
                  dateTime: noteFormDateTime,
                );
            context.read<NoteWatcherCubit>().getDailyAmountStarted(
                  dateTime: noteFormDateTime,
                );
            // 重整圖表
            context.read<StatisticChartCubit>().getSingleDayStarted(
                  amountType:
                      context.read<StatisticChartCubit>().state.amountType,
                  dateTime: noteFormDateTime,
                );
          },
        ),
        // 寫完表格，重整至最新新增的那個表單的日期位置
        BlocListener<NoteFormCubit, NoteFormState>(
          listenWhen: (p, c) => p.isSaving != c.isSaving && c.isSaving == false,
          listener: (context, state) {
            // 重整note
            context.read<NoteWatcherCubit>().getSingleDayStarted(
                  dateTime: state.note.dateTime,
                );
            context.read<NoteWatcherCubit>().getDailyAmountStarted(
                  dateTime: state.note.dateTime,
                );
            // 重整chart
            context.read<StatisticChartCubit>().getSingleDayStarted(
                  amountType:
                      context.read<StatisticChartCubit>().state.amountType,
                  dateTime: state.note.dateTime,
                );
            // 重整兩者日期
            context.read<NoteWatcherCubit>().onDaySelected(
                  state.note.dateTime,
                  state.note.dateTime,
                );
            context
                .read<StatisticChartCubit>()
                .dateTimeChanged(state.note.dateTime);
          },
        ),
        // 從note_home選取日期，重整頁面，下次填寫表單時也要從選取後的日期新增
        BlocListener<NoteWatcherCubit, NoteWatcherState>(
          listenWhen: (p, c) => p.focusedDay != c.focusedDay,
          listener: (context, state) {
            // 更改表單下次的日期
            context.read<NoteFormCubit>().dateTimeChanged(state.focusedDay);
            // 更改chart日期
            context
                .read<StatisticChartCubit>()
                .dateTimeChanged(state.focusedDay);
            // 重整note
            context.read<NoteWatcherCubit>().getSingleDayStarted(
                  dateTime: state.focusedDay,
                );
            context.read<NoteWatcherCubit>().getDailyAmountStarted(
                  dateTime: state.focusedDay,
                );
            // 重整圖表
            context.read<StatisticChartCubit>().getSingleDayStarted(
                  amountType:
                      context.read<StatisticChartCubit>().state.amountType,
                  dateTime: state.focusedDay,
                );
          },
        ),
        // 圖表的amountType被更改，重整統計圖
        BlocListener<StatisticChartCubit, StatisticChartState>(
          listenWhen: (p, c) => p.amountType != c.amountType,
          listener: (context, state) {
            context.read<StatisticChartCubit>().getSingleDayStarted(
                  amountType: state.amountType,
                  dateTime: state.dateTime,
                );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(FlutterI18n.translate(context, "note.title")),
          actions: [
            // const DateTimePickerIconButton(),
            IconButton(
              onPressed: () {
                final noteState = context.read<NoteWatcherCubit>().state;

                Note initNote = NoteFormState.initial().note.copyWith(
                      accountId: noteState.account.id!,
                      dateTime: noteState.focusedDay,
                    );
                context.read<NoteFormCubit>().initialized(initNote, false);
                context.pushRoute(const NoteFormRoute());
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: const NoteOverviewBody(),
      ),
    );
  }
}
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