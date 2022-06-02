import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq_accounting_app/application/accounts/account_watcher/account_watcher_cubit.dart';
import 'package:qq_accounting_app/infrastructure/accounts/account_repository.dart';

// import '../../application/accounts/account_blocs.dart';
// import '../../application/charts/statistic_chart/statistic_chart_bloc.dart';
// import '../../application/core/theme_cubit.dart';
// import '../../application/notes/note_blocs.dart';
// import '../../domain/charts/i_chart_repository.dart';
// import '../../domain/notes/i_account_repository.dart';
// import '../../domain/notes/i_note_repository.dart';
// import '../../injection.dart';
// import '../../localization.dart';
import '../routes/router.gr.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rootRouter = RootRouter();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                AccountWatcherCubit(AccountRepository())..fetchaccounts(),
          )
        ],
        child: MaterialApp.router(
          // title: FlutterBlocLocalizations().appTitle,
          debugShowCheckedModeBanner: false,
          // localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
          supportedLocales: const [Locale('en'), Locale('zh', 'TW')],
          // onGenerateRoute: AppRouter.onGenerateRoute,
          // initialRoute: SplashScreen.routeName,
          // builder: ExtendedNavigator.builder(router: app_router.Router()),
          routerDelegate: rootRouter.delegate(),
          routeInformationParser: rootRouter.defaultRouteParser(),
        ));
  }
}
