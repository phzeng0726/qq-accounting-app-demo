import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/accounts/account_watcher/account_watcher_cubit.dart';
import '../../../application/charts/statistic_chart/statistic_chart_cubit.dart';
import '../../../application/notes/note_actor/note_actor_cubit.dart';
import '../../../application/notes/note_form/note_form_cubit.dart';
import '../../../application/notes/note_watcher/note_watcher_cubit.dart';

List<BlocListener> listeners = [
  // 刪除資料後重整頁面
  BlocListener<NoteActorCubit, NoteActorState>(
    listenWhen: (p, c) => p != c && c == const NoteActorState.deleteSuccess(),
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
            amountType: context.read<StatisticChartCubit>().state.amountType,
            dateTime: noteFormDateTime,
          );
      // 重整accountBalance
      context.read<AccountWatcherCubit>().fetchAccounts();
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
            amountType: context.read<StatisticChartCubit>().state.amountType,
            dateTime: state.note.dateTime,
          );
      // 重整兩者日期
      context.read<NoteWatcherCubit>().onDaySelected(
            state.note.dateTime,
            state.note.dateTime,
          );
      context.read<StatisticChartCubit>().dateTimeChanged(
            state.note.dateTime,
          );
      // 重整accountBalance
      context.read<AccountWatcherCubit>().fetchAccounts();
    },
  ),
  // 從note_home選取日期，重整頁面，下次填寫表單時也要從選取後的日期新增
  BlocListener<NoteWatcherCubit, NoteWatcherState>(
    listenWhen: (p, c) => p.focusedDay != c.focusedDay,
    listener: (context, state) {
      // 更改表單下次的日期
      context.read<NoteFormCubit>().dateTimeChanged(state.focusedDay);
      // 更改chart日期
      context.read<StatisticChartCubit>().dateTimeChanged(state.focusedDay);
      // 重整note
      context.read<NoteWatcherCubit>().getSingleDayStarted(
            dateTime: state.focusedDay,
          );
      context.read<NoteWatcherCubit>().getDailyAmountStarted(
            dateTime: state.focusedDay,
          );
      // 重整圖表
      context.read<StatisticChartCubit>().getSingleDayStarted(
            amountType: context.read<StatisticChartCubit>().state.amountType,
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
];
