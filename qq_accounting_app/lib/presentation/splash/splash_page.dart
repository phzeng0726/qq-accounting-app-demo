import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/splash_listeners.dart';

// 因為這個APP幾乎每個cubit都有連貫，所以Listener放這
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.pushRoute(const HomeRoute());
    // print(SplashRoute.name == context.read<NavigationCubit>().state.routeType);
    // const String routeName = SplashRoute.name;
    return MultiBlocListener(
      listeners: listeners,
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
