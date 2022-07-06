// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';

// import '../routes/router.gr.dart';

// class SplashPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocListener(
//       listeners: [
//                 //     context.pushRoute(const SignInRoute());

//         // // H_1 在 app 重啟時回復上次所在的頁面
//         // BlocListener<NavigationBloc, NavigationState>(
//         //   listenWhen: (p, c) => c.pageState is InitialPage,
//         //   listener: (context, state) {
//         //     LoggerService.simple.i('NavigationBloc page listening!!');

//         //     context.read<NavigationBloc>().add(
//         //           const NavigationEvent.pagePushed(),
//         //         );

//         //     context.pushRoute(const SignInRoute());
//         //     // if (state.page is NavSignInPage) {
//         //     //   return;
//         //     // }

//         //     // context.pushRoute(const ResearcherHomeRoute());
//         //     // // if (state.page is NavResearcherHomePage) {
//         //     // //   return;
//         //     // // }

//         //     //  context.pushRoute(const SubjectHomeRoute());
//         //     // if (state.page is NavSubjectHomePage) {
//         //     //   return;
//         //     // }
//         //   },
//         // ),
//         // // H_2.1 AuthBloc開始監聽，若登入成功，進到 ???Page
//         // BlocListener<AuthBloc, AuthState>(
//         //     listenWhen: (p, c) =>
//         //         c.signInState is LoadSuccess && c.signInState != p.signInState,
//         //     listener: (context, state) {
//         //       LoggerService.simple.i('AuthBloc listening!!');

//         //       // TODO 不同腳色要匯入不同的bloc
//         //       if (state.user.type.getOrCrash() == 'subject') {
//         //         LoggerService.simple.i('Push to SubjectHomePage!!');

//         //         context.pushRoute(const SubjectHomeRoute());
//         //       } else if (state.user.type.getOrCrash() == 'researcher') {
//         //         LoggerService.simple.i('Push to ResearcherHomePage!!');

//         //         context.pushRoute(const ResearcherHomeRoute());
//         //         context
//         //             .read<ResearcherApiBloc>()
//         //             .add(const ResearcherApiEvent.watchResearcherApiList());
//         //       }

//         //       LoggerService.simple.i('signInState: ${state.signInState}');
//         //       LoggerService.simple.i('user: ${state.user}');
//         //       // context.read<OverviewPageBloc>().add(OverviewPageEvent.loadUser(
//         //       //     userId: state.user.id, emailAddress: state.emailAddress));

//         //       // context
//         //       //     .read<GameBloc>()
//         //       //     .add(GameEvent.watchGameListStarted(userId: state.user.id));
//         //     }),
//         // // H_2.2 AuthBloc開始監聽，若登出，初始化所有bloc，且回到SignInPage
//         // BlocListener<AuthBloc, AuthState>(
//         //     listenWhen: (p, c) =>
//         //         c.signInState is LoadInitial && c.signInState != p.signInState,
//         //     listener: (context, state) {
//         //       LoggerService.simple.i('Log out!!');
//         //       context.pushRoute(const SignInRoute());
//         //     }),
//         // // H_2.2 AuthBloc開始監聽，若登出，初始化所有bloc，且回到SignInPage
//       ],
//       child: const Scaffold(
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       ),
//     );
//   }
// }
