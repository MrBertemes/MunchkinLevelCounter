import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late TextEditingController nivel;

  @override
  void initState() {
    nivel = TextEditingController();
    nivel.text = '1';
    super.initState();
  }

  @override
  void dispose() {
    nivel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              var num = int.parse(nivel.text);
              if (num > 1) {
                num = num - 1;
                setState(() {
                  nivel.text = num.toString();
                });
              }
            },
            icon: const Icon(Icons.arrow_back_ios_rounded),
          ),
          Center(
            child: Text(nivel.text),
          ),
          IconButton(
            onPressed: () {
              var num = int.parse(nivel.text);
              num = num + 1;
              setState(() {
                  nivel.text = num.toString();
                });
            },
            icon: const Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    );
  }
}
