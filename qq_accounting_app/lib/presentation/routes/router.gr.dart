// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../home/home_page.dart' as _i1;
import '../home/widgets/account_form/account_form_page.dart' as _i2;
import '../notes/note_overview_page.dart' as _i3;

class RootRouter extends _i4.RootStackRouter {
  RootRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    AccountFormRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AccountFormPage());
    },
    NoteOverviewRoute.name: (routeData) {
      final args = routeData.argsAs<NoteOverviewRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i3.NoteOverviewPage(key: args.key, accountId: args.accountId));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(AccountFormRoute.name, path: '/account-form-page'),
        _i4.RouteConfig(NoteOverviewRoute.name, path: ':accountId')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.AccountFormPage]
class AccountFormRoute extends _i4.PageRouteInfo<void> {
  const AccountFormRoute()
      : super(AccountFormRoute.name, path: '/account-form-page');

  static const String name = 'AccountFormRoute';
}

/// generated route for
/// [_i3.NoteOverviewPage]
class NoteOverviewRoute extends _i4.PageRouteInfo<NoteOverviewRouteArgs> {
  NoteOverviewRoute({_i5.Key? key, required int? accountId})
      : super(NoteOverviewRoute.name,
            path: ':accountId',
            args: NoteOverviewRouteArgs(key: key, accountId: accountId));

  static const String name = 'NoteOverviewRoute';
}

class NoteOverviewRouteArgs {
  const NoteOverviewRouteArgs({this.key, required this.accountId});

  final _i5.Key? key;

  final int? accountId;

  @override
  String toString() {
    return 'NoteOverviewRouteArgs{key: $key, accountId: $accountId}';
  }
}
