// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'home_page.dart' as _i1;
import 'my_dialog.dart' as _i2;
import 'router.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
        transitionsBuilder: _i3.TransitionsBuilders.noTransition,
        durationInMilliseconds: 0,
        reverseDurationInMilliseconds: 0,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MyDialog.name: (routeData) {
      return _i3.CustomPage<_i2.MyDialog>(
        routeData: routeData,
        child: const _i2.MyDialog(),
        customRouteBuilder: _i5.DialogRoute.dialogRouteBuilder,
        transitionsBuilder: _i3.TransitionsBuilders.noTransition,
        durationInMilliseconds: 150,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRouteContent.name: (routeData) {
      return _i3.CustomPage<_i1.HomePageContent>(
        routeData: routeData,
        child: const _i1.HomePageContent(),
        transitionsBuilder: _i3.TransitionsBuilders.noTransition,
        durationInMilliseconds: 0,
        reverseDurationInMilliseconds: 0,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i3.RouteConfig(
              HomeRouteContent.name,
              path: '',
              parent: HomeRoute.name,
            )
          ],
        ),
        _i3.RouteConfig(
          MyDialog.name,
          path: '/dialog',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.MyDialog]
class MyDialog extends _i3.PageRouteInfo<void> {
  const MyDialog()
      : super(
          MyDialog.name,
          path: '/dialog',
        );

  static const String name = 'MyDialog';
}

/// generated route for
/// [_i1.HomePageContent]
class HomeRouteContent extends _i3.PageRouteInfo<void> {
  const HomeRouteContent()
      : super(
          HomeRouteContent.name,
          path: '',
        );

  static const String name = 'HomeRouteContent';
}
