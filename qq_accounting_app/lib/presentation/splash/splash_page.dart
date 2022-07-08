import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/domain/core/load_status.dart';

import '../../application/accounts/account_watcher/account_watcher_cubit.dart';
import '../../application/charts/statistic_chart/statistic_chart_cubit.dart';
import '../../application/core/navigation/navigation_cubit.dart';
import '../../application/notes/note_watcher/note_watcher_cubit.dart';
import '../../domain/core/logger.dart';
import '../routes/router.gr.dart';

// 因為這個APP幾乎每個cubit都有連貫，所以Listener放這
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.pushRoute(const HomeRoute());
    // print(SplashRoute.name == context.read<NavigationCubit>().state.routeType);
    // const String routeName = SplashRoute.name;
    return MultiBlocListener(
      listeners: [
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
            } else {
              print(context.router.current.name);
            }
          },
        ),
        // NOTE: 當有選擇的account的時候，要初始化 NoteWatcherCubit 與 StatisticChartCubit
        BlocListener<AccountWatcherCubit, AccountWatcherState>(
          listenWhen: (p, c) => c.selectedAccountOption.isSome(),
          listener: (context, state) {
            LoggerService.simple.i('AccountWatcherCubit listening!!');

            final DateTime now = DateTime.now();
            state.selectedAccountOption.fold(
              () => null,
              (account) {
                // NoteWatcherCubit
                context.read<NoteWatcherCubit>().selectedAccount(account);
                context.read<NoteWatcherCubit>().getSingleDayStarted(
                      dateTime: now,
                    );
                context.read<NoteWatcherCubit>().getDailyAmountStarted(
                      dateTime: now,
                    );
                // StatisticChartCubit
                context.read<StatisticChartCubit>().selectedAccount(account);
                context.read<StatisticChartCubit>().getSingleDayStarted(
                      amountType:
                          context.read<StatisticChartCubit>().state.amountType,
                      dateTime: now,
                    );
              },
            );
          },
        ),
      ],
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
