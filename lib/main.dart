import 'package:counter/pages/Counting.dart';
import 'package:counter/pages/choice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Main(),
    ),
  );
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/count') {
      //     final args = settings.arguments;
      //     return PageRouteBuilder(
      //       pageBuilder: (a,b,c) => Counting(numberOfPlayers: args),
      //     );
      //   }
      // },
      routes: {
        '/': (context) => const Choice(),
        '/count': (context) => const Counting(),
      },
    );
  }
}
