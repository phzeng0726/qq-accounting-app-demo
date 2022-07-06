import 'package:auto_route/auto_route.dart';
import 'package:qq_accounting_app/presentation/home/home_page.dart';

import '../accounts/account_form/account_form_page.dart';
import '../accounts/account_home/account_page.dart';
import '../notes/note_form/note_form_page.dart';
import '../notes/note_home/note_home_page.dart';

// https://www.youtube.com/watch?v=9oH42_Axr3Q
// TODO 記得修改path
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route', // NOTE: 將前者取代為後者，ex: HomePage => HomeRoute
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, path: '/', initial: true),
    // AutoRoute(page: AccountPage),
    AutoRoute(page: AccountFormPage),
    AutoRoute(page: NoteHomePage, path: ':accountId'),
    AutoRoute(page: NoteFormPage)
  ],
)
class $RootRouter {}
