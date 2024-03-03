import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final createRandom = Random();
  var currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = createRandom.nextInt(6) + 1;
    });
  }

  void reset() {
    setState(() {
      var set = 1;
      currentDice = set;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          '/Users/anandadev/tools/flutter_projects/ud_st/assets/dice-$currentDice.png',
          width: 200.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10.0),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 25.0,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextButton(
          onPressed: reset,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10.0),
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 25.0,
            ),
          ),
          child: const Text("Reset Dice"),
        )
      ],
    );
  }
}
