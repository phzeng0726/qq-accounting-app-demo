import 'package:auto_route/auto_route.dart';
import 'package:qq_accounting_app/presentation/notes/note_overview_page.dart';

import '../home/home_page.dart';
import '../home/widgets/account_form/account_form_page.dart';

// https://www.youtube.com/watch?v=9oH42_Axr3Q
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route', // NOTE: 將前者取代為後者，ex: HomePage => HomeRoute
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, path: '/', initial: true),
    // AutoRoute(page: AccountPage),
    AutoRoute(page: AccountFormPage),
    AutoRoute(page: NoteOverviewPage, path: ':accountId'),
    // AutoRoute(page: NoteFormPage)
  ],
)
class $RootRouter {}
