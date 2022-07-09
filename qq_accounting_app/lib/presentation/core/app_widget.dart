import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import '../../application/theme/theme_cubit.dart';
import '../../constants.dart';
import '../routes/router.gr.dart';
import '../../../application/account/account_form/account_form_cubit.dart';
import '../../../application/account/account_watcher/account_watcher_cubit.dart';
import '../../../application/chart/statistic_chart/statistic_chart_cubit.dart';
import '../../../application/core/navigation/navigation_cubit.dart';
import '../../../application/note/note_actor/note_actor_cubit.dart';
import '../../../application/note/note_form/note_form_cubit.dart';
import '../../../application/note/note_watcher/note_watcher_cubit.dart';
import '../../../application/theme/theme_cubit.dart';
import '../../../domain/account/i_account_repository.dart';
import '../../../domain/chart/i_chart_repository.dart';
import '../../../domain/note/i_note_repository.dart';
import '../../../injection.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rootRouter = RootRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => NavigationCubit()..pageInitialized(),
        ),
        BlocProvider(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider(
          create: (_) => AccountFormCubit(getIt<IAccountRepository>()),
        ),
        BlocProvider(
          create: (_) => AccountWatcherCubit(
            getIt<IAccountRepository>(),
            getIt<INoteRepository>(),
          )..fetchAccounts(),
        ),
        BlocProvider(
          create: (_) => NoteFormCubit(getIt<INoteRepository>()),
        ),
        BlocProvider(
          create: (_) => NoteActorCubit(getIt<INoteRepository>()),
        ),
        BlocProvider(
          create: (_) => NoteWatcherCubit(getIt<INoteRepository>()),
        ),
        BlocProvider(
          create: (_) => StatisticChartCubit(
            getIt<INoteRepository>(),
            getIt<IChartRepository>(),
          ),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: state.themeData,
            localizationsDelegates: [
              FlutterI18nDelegate(
                translationLoader: FileTranslationLoader(
                  useCountryCode: true,
                  fallbackFile: localeMapList.first['id'],
                  basePath: 'assets/i18n',
                  forcedLocale: state.currentLang,
                ),
              ),
              // GlobalWidgetsLocalizations.delegate,
              // GlobalMaterialLocalizations.delegate,
            ],
            supportedLocales: localeMapList.map((map) => map['locale']),
            routerDelegate: rootRouter.delegate(
              navigatorObservers: () => [AutoRouteObserver()],
            ),
            routeInformationParser: rootRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
