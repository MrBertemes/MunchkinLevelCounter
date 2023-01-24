import 'package:counter/pages/Counting.dart';
import 'package:counter/pages/choice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Main(),
    ),
  );
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Choice(),
        '/count': (context) => const Counting(),
      },
    );
  }
}
