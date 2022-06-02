import 'package:flutter/material.dart';

import '../../application/accounts/account_blocs.dart';
import '../../application/charts/statistic_chart/statistic_chart_bloc.dart';
import '../../application/core/theme_cubit.dart';
import '../../application/notes/note_blocs.dart';
import '../../domain/charts/i_chart_repository.dart';
import '../../domain/notes/i_account_repository.dart';
import '../../domain/notes/i_note_repository.dart';
import '../../injection.dart';
import '../../localization.dart';
import '../routes/router.gr.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _rootRouter = RootRouter();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider(
            create: (_) => AccountWatcherBloc(getIt<IAccountRepository>())
              ..add(AccountWatcherEvent.getAllStarted()),
          ),
          BlocProvider(
            create: (_) => AccountFormBloc(
              getIt<IAccountRepository>(),
            ),
          ),
          BlocProvider(
            create: (_) => NoteActorBloc(
              getIt<INoteRepository>(),
            ),
          ),
          BlocProvider(
            create: (_) => NoteFormBloc(
              getIt<INoteRepository>(),
            ),
          ),
          BlocProvider(
            create: (_) => getIt<NoteWatcherBloc>()
              // ..add(NoteWatcherEvent.getSingleDayStarted(DateTime.now())),
          ),
          BlocProvider(
            create: (_) => StatisticChartBloc(
              getIt<INoteRepository>(),
              getIt<IChartRepository>(),
            ),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeData>(builder: (_, theme) {
          return MaterialApp.router(
            title: FlutterBlocLocalizations().appTitle,
            debugShowCheckedModeBanner: false,
            theme: theme,
            // localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
            supportedLocales: const [Locale('en'), Locale('zh', 'TW')],
            // onGenerateRoute: AppRouter.onGenerateRoute,
            // initialRoute: SplashScreen.routeName,
            // builder: ExtendedNavigator.builder(router: app_router.Router()),
            routerDelegate: _rootRouter.delegate(),
            routeInformationParser: _rootRouter.defaultRouteParser(),
          );
        }));
  }
}
