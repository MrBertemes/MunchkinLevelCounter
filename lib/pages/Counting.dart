// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:counter/widgets/player.dart';
import 'package:flutter/material.dart';


class Counting extends StatefulWidget {
  final numberOfPlayers;
  const Counting({super.key, this.numberOfPlayers = 3});

  @override
  State<Counting> createState() => _CountingState();
}

class _CountingState extends State<Counting> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: args as int,
          itemBuilder: ((context, index) {
            return const Center(child: ListTile(title: Player()));
          }),
        ),
      ),
    );
  }
}
