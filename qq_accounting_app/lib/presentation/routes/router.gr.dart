// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../accounts/account_form/account_form_page.dart' as _i2;
import '../accounts/account_home/account_page.dart' as _i1;

class RootRouter extends _i3.RootStackRouter {
  RootRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AccountPage());
    },
    AccountFormRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AccountFormPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(AccountRoute.name, path: '/'),
        _i3.RouteConfig(AccountFormRoute.name, path: '/account-form-page')
      ];
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i3.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: '/');

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i2.AccountFormPage]
class AccountFormRoute extends _i3.PageRouteInfo<void> {
  const AccountFormRoute()
      : super(AccountFormRoute.name, path: '/account-form-page');

  static const String name = 'AccountFormRoute';
}
