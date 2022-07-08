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
    // context.pushRoute(const HomeRoute());
    // print(SplashRoute.name == context.read<NavigationCubit>().state.routeType);
    // const String routeName = SplashRoute.name;
    return BlocConsumer<NavigationCubit, NavigationState>(
      listenWhen: (p, c) => c.routeType == '',
      builder: (context, state) {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
      listener: (_, state) {
        LoggerService.simple.i('NavigationCubit page listening!!');
        context.read<NavigationCubit>().nav(HomeRoute.name);
        context.pushRoute(const HomeRoute());
      },
    );
  }
}
