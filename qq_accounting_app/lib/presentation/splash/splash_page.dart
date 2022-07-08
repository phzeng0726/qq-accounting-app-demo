import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/core/navigation/navigation_cubit.dart';
import '../../domain/core/logger.dart';
import '../routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.pushRoute(const HomeRoute());
    // print(SplashRoute == NavigationState.initial().routeType);

    return MultiBlocListener(
      listeners: [
        BlocListener<NavigationCubit, NavigationState>(
          listenWhen: (p, c) => c.routeType == SplashRoute,
          listener: (context, state) {
            LoggerService.simple.i('NavigationCubit page listening!!');
            context.read<NavigationCubit>().nav(HomeRoute);
            // print(context.router.current.name);
            // if (context.router.current.route == )
            context.pushRoute(const HomeRoute());
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
