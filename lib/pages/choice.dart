import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  const Choice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/count', arguments: 3);
            },
            child: const Text('3'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/count', arguments: 4);
            },
            child: const Text('4'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/count', arguments: 5);
            },
            child: const Text('5'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/count', arguments: 6);
            },
            child: const Text('6'),
          ),
        ],
      )),
    );
  }
}
