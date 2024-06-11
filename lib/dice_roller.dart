import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();//隨機變數

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {  
  var currentDiceRoll = randomizer.nextInt(6) + 1; //隨機生成數字1~6

  void rollDice() {
    setState(
      () {
        currentDiceRoll = randomizer.nextInt(6) + 1; //隨機生成數字1~6
        debugPrint('image change....');
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 30.0),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            // foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          child: const Text('按一下'),
        )
      ],
    );
  }
}
