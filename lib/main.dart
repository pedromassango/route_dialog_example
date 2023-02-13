import 'package:flutter/material.dart';
import 'package:route_dialog_sample/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      routeInformationProvider: _router.routeInfoProvider(),
    );
  }
}

