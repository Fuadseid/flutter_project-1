import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeRoll = 'assets/images/dice-1.png';
  var roll = 1;
  void rolldice() {
    roll = randomizer.nextInt(6) + 1;
    //function to roll the dice when we click
    setState(() {
      activeRoll = 'assets/images/dice-$roll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(activeRoll, width: 200),
      const SizedBox(
        height: 10,
      ),
      TextButton(
        onPressed: rolldice,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.only(top: 10),
          foregroundColor: const Color.fromARGB(255, 192, 255, 223),
          textStyle: const TextStyle(
            fontSize: 28,
          ),
        ),
        child: const Text(
          "Roll Dices",
        ),
      )
    ]);
  }
}
