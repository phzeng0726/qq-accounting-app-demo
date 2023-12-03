import 'package:auto_route/auto_route.dart';

import '../home/account_form/account_form_page.dart';
import '../home/home_page.dart';
import '../note/note_form/note_form_page.dart';
import '../note/note_overview/note_overview_page.dart';
import '../splash/splash_page.dart';

// https://www.youtube.com/watch?v=9oH42_Axr3Q
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route', // NOTE: 將前者取代為後者，ex: HomePage => HomeRoute
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, path: '/', initial: true),
    AutoRoute(page: HomePage, path: '/home'),
    AutoRoute(page: AccountFormPage),
    AutoRoute(page: NoteOverviewPage, path: ':accountId'),
    AutoRoute(page: NoteFormPage, path: ':accountId/form')
  ],
)
class $RootRouter {}
