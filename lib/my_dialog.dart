import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Dialog(
      child: Scaffold(
        body: Center(
          child: Text('I\'m a Dialog\n Now tap the browser\'s back button.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
