import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late TextEditingController level;
  late TextEditingController gold;

  @override
  void initState() {
    level = TextEditingController();
    level.text = '1';
    gold = TextEditingController();
    gold.text = '0';
    super.initState();
  }

  @override
  void dispose() {
    level.dispose();
    gold.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            // Level
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  var num = int.parse(level.text);
                  if (num > 1) {
                    num = num - 1;
                    setState(() {
                      level.text = num.toString();
                    });
                  }
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
              Center(
                child: Text(
                  level.text,
                  style: const TextStyle(
                    fontFamily: 'Munchkin',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  var num = int.parse(level.text);
                  num = num + 1;
                  setState(() {
                    level.text = num.toString();
                  });
                },
                icon: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
          Row(
            // Gold
            children: [
              IconButton(
                onPressed: () {
                  var num = int.parse(gold.text);
                  if (num > 1) {
                    num = num - 1;
                    setState(() {
                      level.text = num.toString();
                    });
                  }
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
              Center(
                child: Text(
                  level.text,
                  style: const TextStyle(
                    fontFamily: 'Munchkin',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  var num = int.parse(level.text);
                  num = num + 1;
                  setState(() {
                    level.text = num.toString();
                  });
                },
                icon: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
