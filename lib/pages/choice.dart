import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  const Choice({super.key});

  @override
  Widget build(BuildContext context) {
    Size sizes = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => Size(sizes.width * 0.50, sizes.height * 0.15)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/count', arguments: 3);
              },
              child: const Text('3', style: TextStyle(fontFamily: 'Munchkin')),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) => Size(sizes.width * 0.50, sizes.height * 0.15),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/count', arguments: 4);
              },
              child: const Text('4', style: TextStyle(fontFamily: 'Munchkin')),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => Size(sizes.width * 0.50, sizes.height * 0.15)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/count', arguments: 5);
              },
              child: const Text('5', style: TextStyle(fontFamily: 'Munchkin')),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.resolveWith(
                    (states) => Size(sizes.width * 0.50, sizes.height * 0.15)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/count', arguments: 6);
              },
              child: const Text('6', style: TextStyle(fontFamily: 'Munchkin')),
            ),
          ),
        ],
      )),
    );
  }
}
