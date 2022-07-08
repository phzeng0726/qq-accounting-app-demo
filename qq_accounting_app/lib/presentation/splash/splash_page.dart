import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/domain/core/load_status.dart';

import '../../application/core/navigation/navigation_cubit.dart';
import '../../domain/core/logger.dart';
import '../routes/router.gr.dart';

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
          listenWhen: (p, c) =>
              p.loadStatus != c.loadStatus &&
              c.loadStatus == const LoadStatus.succeed(),
          listener: (context, state) {
            LoggerService.simple.i('NavigationCubit page listening!!');

              context.pushRoute(const HomeRoute());
            if (context.router.current.name == HomeRoute.name) {
              context.pushRoute(const HomeRoute());
            } else if (context.router.current.name == AccountFormRoute.name) {
              context.pushRoute(const AccountFormRoute());
            } else {
              print(context.router.current.name);
            }

            // if (state is SplashLoaded) {
            // }
          },
        ),
      ],
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
    // return BlocConsumer<NavigationCubit, NavigationState>(
    //   listener: (context, state) {
    //     LoggerService.simple.i('NavigationCubit page listening!!');
    //     if (state is SplashLoaded) {
    //       context.pushRoute(const HomeRoute());
    //     }
    //     // if (state.routeType == SplashRoute.name) {
    //     //   context.pushRoute(const HomeRoute());
    //     // }
    //     // context.read<NavigationCubit>().nav(HomeRoute.name);
    //     // context.pushRoute(const HomeRoute());
    //   },
    //   builder: (context, state) {
    //     return const Scaffold(
    //       body: Center(child: CircularProgressIndicator()),
    //     );
    //   },
    // );
  }
}
