import 'package:auto_route/auto_route.dart';
import 'package:qq_accounting_app/presentation/accounts/account_home/account_page.dart';

// import '../accounts/account_form/account_form_page.dart';
// import '../notes/note_form/note_form_page.dart';
// import '../notes/note_home/note_home_page.dart';
// import '../researcher_home/researcher_home_page.dart';

// import '../../presentation/splash/splash_page.dart';
// import '../sign_in/sign_in_page.dart';
// import '../subject_home/final_page.dart';
// import '../subject_home/game_rule_page.dart';
// import '../subject_home/quiz/quiz_page.dart';
// import '../subject_home/subject_home_page.dart';
// https://www.youtube.com/watch?v=9oH42_Axr3Q
// TODO 記得修改path
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route', // NOTE: 將前者取代為後者，ex: HomePage => HomeRoute
  routes: <AutoRoute>[
    AutoRoute(page: AccountPage, path: '/', initial: true),
    // AutoRoute(page: AccountFormPage),

    // AutoRoute(page: NoteHomePage, path: ':accountId'),
    // AutoRoute(page: NoteFormPage), // single note page || path: ':noteId'
    // // Looks like you're trying to navigate to a nested route without adding their parent to stack first
    // AutoRoute(page: HomePage, path: '/', children: [
    //   AutoRoute(
    //       path: 'notes',
    //       name: 'NotesRouter',
    //       page: EmptyRouterPage,
    //       children: [
    //         AutoRoute(page: NotesOverviewPage, path: ''),
    //         AutoRoute(page: NoteFormPagepath: ':noteId'), // single note page ||
    //       ])
    // ]),
  ],
)
class $RootRouter {}

// TODO: single note page
// stls裡面要增加noteId
// @PathParam required this.noteId
