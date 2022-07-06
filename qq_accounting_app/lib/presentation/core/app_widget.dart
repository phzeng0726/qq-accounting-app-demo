import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../application/accounts/account_form/account_form_cubit.dart';
import '../../application/accounts/account_watcher/account_watcher_cubit.dart';
import '../../application/notes/note_form/note_form_cubit.dart';
import '../../application/theme/theme_cubit.dart';
import '../../constants.dart';
import '../../domain/accounts/i_account_repository.dart';
import '../../domain/notes/i_note_repository.dart';
import '../../injection.dart';
import '../routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rootRouter = RootRouter();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider(
            create: (_) => AccountFormCubit(getIt<IAccountRepository>()),
          ),
          BlocProvider(
            create: (_) => AccountWatcherCubit(getIt<IAccountRepository>())
              ..fetchAccounts(),
          ),
          BlocProvider(
            create: (_) => NoteFormCubit(getIt<INoteRepository>()),
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
              routerDelegate: rootRouter.delegate(),
              routeInformationParser: rootRouter.defaultRouteParser(),
            );
          },
        ));
  }
}
