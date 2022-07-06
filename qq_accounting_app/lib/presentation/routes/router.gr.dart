// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../accounts/account_form/account_form_page.dart' as _i2;
import '../home/home_page.dart' as _i1;
import '../notes/note_form/note_form_page.dart' as _i4;
import '../notes/note_home/note_home_page.dart' as _i3;

class RootRouter extends _i5.RootStackRouter {
  RootRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    AccountFormRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AccountFormPage());
    },
    NoteHomeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NoteHomeRouteArgs>(
          orElse: () =>
              NoteHomeRouteArgs(accountId: pathParams.optInt('accountId')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.NoteHomePage(key: args.key, accountId: args.accountId));
    },
    NoteFormRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NoteFormPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(HomeRoute.name, path: '/'),
        _i5.RouteConfig(AccountFormRoute.name, path: '/account-form-page'),
        _i5.RouteConfig(NoteHomeRoute.name, path: ':accountId'),
        _i5.RouteConfig(NoteFormRoute.name, path: '/note-form-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.AccountFormPage]
class AccountFormRoute extends _i5.PageRouteInfo<void> {
  const AccountFormRoute()
      : super(AccountFormRoute.name, path: '/account-form-page');

  static const String name = 'AccountFormRoute';
}

/// generated route for
/// [_i3.NoteHomePage]
class NoteHomeRoute extends _i5.PageRouteInfo<NoteHomeRouteArgs> {
  NoteHomeRoute({_i6.Key? key, required int? accountId})
      : super(NoteHomeRoute.name,
            path: ':accountId',
            args: NoteHomeRouteArgs(key: key, accountId: accountId),
            rawPathParams: {'accountId': accountId});

  static const String name = 'NoteHomeRoute';
}

class NoteHomeRouteArgs {
  const NoteHomeRouteArgs({this.key, required this.accountId});

  final _i6.Key? key;

  final int? accountId;

  @override
  String toString() {
    return 'NoteHomeRouteArgs{key: $key, accountId: $accountId}';
  }
}

/// generated route for
/// [_i4.NoteFormPage]
class NoteFormRoute extends _i5.PageRouteInfo<void> {
  const NoteFormRoute() : super(NoteFormRoute.name, path: '/note-form-page');

  static const String name = 'NoteFormRoute';
}
