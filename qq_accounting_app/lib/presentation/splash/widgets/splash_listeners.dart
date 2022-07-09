import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/account/account_watcher/account_watcher_cubit.dart';
import '../../../application/chart/statistic_chart/statistic_chart_cubit.dart';
import '../../../application/core/navigation/navigation_cubit.dart';
import '../../../application/note/note_actor/note_actor_cubit.dart';
import '../../../application/note/note_form/note_form_cubit.dart';
import '../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../domain/core/load_status.dart';
import '../../../domain/core/logger.dart';
import '../../routes/router.gr.dart';

// CUD都需要重整，所以額外獨立出來
void refreshNoteAndChartDisplay({
  required BuildContext context,
  required DateTime dateTime,
  required String amountType,
}) {
  // 重抓 noteList 與 dailyAmount
  context.read<NoteWatcherCubit>().getSingleDayStarted(
        dateTime: dateTime,
      );
  context.read<NoteWatcherCubit>().getDailyAmountStarted(
        dateTime: dateTime,
      );

  // 重抓當日圖表
  context.read<StatisticChartCubit>().getSingleDayStarted(
        amountType: amountType,
        dateTime: dateTime,
      );
}

List<BlocListener> listeners = [
  // NOTE: 在APP重啟的時候幫忙回復狀態
  BlocListener<NavigationCubit, NavigationState>(
    listenWhen: (p, c) => c.loadStatus == const LoadStatus.initial(),
    listener: (context, state) {
      LoggerService.simple.i('NavigationCubit page listening!!');

      context.pushRoute(const HomeRoute());

      if (context.router.current.name != SplashRoute.name) {
        context.read<NavigationCubit>().pageChanged(
              context.router.current.name,
            );
        return;
      }
    },
  ),
  // NOTE: 當有選擇的account的時候，要初始化 NoteWatcherCubit 與 StatisticChartCubit
  BlocListener<AccountWatcherCubit, AccountWatcherState>(
    listenWhen: (p, c) => c.selectedAccountOption.isSome(),
    listener: (context, state) {
      LoggerService.simple.i('AccountWatcherCubit listening!!');
      final DateTime focusedDay =
          context.read<NoteFormCubit>().state.note.dateTime;

      state.selectedAccountOption.fold(
        () => null,
        (account) {
          refreshNoteAndChartDisplay(
            context: context,
            dateTime: focusedDay,
            amountType: context.read<StatisticChartCubit>().state.amountType,
          );
          // selectedAccount
          context.read<NoteWatcherCubit>().selectedAccount(account);
          context.read<StatisticChartCubit>().selectedAccount(account);
        },
      );
    },
  ),
  // ↓ NoteOverview
  // NOTE: 刪除資料後重整頁面
  BlocListener<NoteActorCubit, NoteActorState>(
    listenWhen: (p, c) => p != c && c == const NoteActorState.deleteSuccess(),
    listener: (context, state) {
      final DateTime focusedDay =
          context.read<NoteFormCubit>().state.note.dateTime;

      refreshNoteAndChartDisplay(
        context: context,
        dateTime: focusedDay,
        amountType: context.read<StatisticChartCubit>().state.amountType,
      );

      // 重整accountBalance
      context.read<AccountWatcherCubit>().fetchAccounts();
    },
  ),
  // NOTE: 寫完表格，重整至最新新增的那個表單的日期位置
  BlocListener<NoteFormCubit, NoteFormState>(
    listenWhen: (p, c) =>
        p.isSaving != c.isSaving &&
        c.isSaving == false &&
        c.failureOption == none(),
    listener: (context, state) {
      final DateTime focusedDay = state.note.dateTime;

      refreshNoteAndChartDisplay(
        context: context,
        dateTime: focusedDay,
        amountType: context.read<StatisticChartCubit>().state.amountType,
      );
      // 更新兩者日期
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
  // NOTE: 從note_home選取日期，重整頁面，下次填寫表單時也要從選取後的日期新增
  BlocListener<NoteWatcherCubit, NoteWatcherState>(
    listenWhen: (p, c) => p.focusedDay != c.focusedDay,
    listener: (context, state) {
      final DateTime focusedDay = state.focusedDay;

      refreshNoteAndChartDisplay(
        context: context,
        dateTime: focusedDay,
        amountType: context.read<StatisticChartCubit>().state.amountType,
      );

      // 更改表單下次的日期
      context.read<NoteFormCubit>().dateTimeChanged(state.focusedDay);
      // 更改chart日期
      context.read<StatisticChartCubit>().dateTimeChanged(state.focusedDay);
    },
  ),
  // NOTE: 圖表的amountType被更改，重整統計圖
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
