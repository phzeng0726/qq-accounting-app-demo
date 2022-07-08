// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../home/home_page.dart' as _i2;
import '../home/widgets/account_form/account_form_page.dart' as _i3;
import '../notes/note_form/note_form_page.dart' as _i5;
import '../notes/note_overview/note_overview_page.dart' as _i4;
import '../splash/splash_page.dart' as _i1;

class RootRouter extends _i6.RootStackRouter {
  RootRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    AccountFormRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AccountFormPage());
    },
    NoteOverviewRoute.name: (routeData) {
      final args = routeData.argsAs<NoteOverviewRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.NoteOverviewPage(
              key: args.key,
              accountId: args.accountId,
              accountName: args.accountName));
    },
    NoteFormRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.NoteFormPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(HomeRoute.name, path: '/home'),
        _i6.RouteConfig(AccountFormRoute.name, path: '/account-form-page'),
        _i6.RouteConfig(NoteOverviewRoute.name, path: ':accountId'),
        _i6.RouteConfig(NoteFormRoute.name, path: ':accountId/form')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.AccountFormPage]
class AccountFormRoute extends _i6.PageRouteInfo<void> {
  const AccountFormRoute()
      : super(AccountFormRoute.name, path: '/account-form-page');

  static const String name = 'AccountFormRoute';
}

/// generated route for
/// [_i4.NoteOverviewPage]
class NoteOverviewRoute extends _i6.PageRouteInfo<NoteOverviewRouteArgs> {
  NoteOverviewRoute(
      {_i7.Key? key, required int? accountId, required String accountName})
      : super(NoteOverviewRoute.name,
            path: ':accountId',
            args: NoteOverviewRouteArgs(
                key: key, accountId: accountId, accountName: accountName));

  static const String name = 'NoteOverviewRoute';
}

class NoteOverviewRouteArgs {
  const NoteOverviewRouteArgs(
      {this.key, required this.accountId, required this.accountName});

  final _i7.Key? key;

  final int? accountId;

  final String accountName;

  @override
  String toString() {
    return 'NoteOverviewRouteArgs{key: $key, accountId: $accountId, accountName: $accountName}';
  }
}

/// generated route for
/// [_i5.NoteFormPage]
class NoteFormRoute extends _i6.PageRouteInfo<void> {
  const NoteFormRoute() : super(NoteFormRoute.name, path: ':accountId/form');

  static const String name = 'NoteFormRoute';
}
