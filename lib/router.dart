// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_dialog_sample/home_page.dart';
import 'package:route_dialog_sample/my_dialog.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  durationInMilliseconds: 0,
  reverseDurationInMilliseconds: 0,
  transitionsBuilder: TransitionsBuilders.noTransition,
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
      path: '/',
      children: [
        AutoRoute<HomePageContent>(
          path: '',
          page: HomePageContent,
          initial: true
        ),
      ]
    ),
    DialogRoute<MyDialog>(
      page: MyDialog,
      path: '/dialog',
    )
  ],
)
class $AppRouter {}

class DialogRoute<T> extends CustomRoute<T> {
  const DialogRoute({
    required super.page,
    super.path,
  }) : super(
          customRouteBuilder: dialogRouteBuilder,
          transitionsBuilder: TransitionsBuilders.noTransition,
          durationInMilliseconds: 150,
        );

  static Route<T> dialogRouteBuilder<T>(
    BuildContext context,
    Widget child,
    CustomPage<T> page,
  ) {
    return RawDialogRoute<T>(
      settings: page,
      pageBuilder: (
        BuildContext buildContext,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return child;
      },
      transitionDuration: const Duration(milliseconds: 150),
      transitionBuilder: TransitionsBuilders.noTransition,
      barrierColor: Colors.black.withOpacity(0.5),
    );
  }
}
