import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePageContent();
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {

  void _incrementCounter() {
    context.router.pushNamed('/dialog');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web App'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Tap me to show Dialog!'),
          onPressed: _incrementCounter,
        ),
      ),
    );
  }
}

