import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/core/navigation/navigation_cubit.dart';

import '../../domain/core/logger.dart';
import '../routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.pushRoute(const HomeRoute());
    return MultiBlocListener(
      listeners: [
        BlocListener<NavigationCubit, NavigationState>(
          listenWhen: (p, c) =>
              c.pageNavStatus == const PageNavStatus.initialPage(),
          listener: (context, state) {
            LoggerService.simple.i('NavigationCubit page listening!!');

            context
                .read<NavigationCubit>()
                .nav(const PageNavStatus.navHomePage());
            context.router.replaceNamed('/home');
            // if (state.page is NavSignInPage) {
            //   return;
            // }

            // context.pushRoute(const ResearcherHomeRoute());
            // // if (state.page is NavResearcherHomePage) {
            // //   return;
            // // }

            //  context.pushRoute(const SubjectHomeRoute());
            // if (state.page is NavSubjectHomePage) {
            //   return;
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
  }
}
