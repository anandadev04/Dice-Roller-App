import 'package:flutter/material.dart';
import 'package:ud_st/dice_roll.dart';

class GradiendContainer extends StatelessWidget {
  GradiendContainer(this.color1, this.color2, {super.key});

  final color1;
  final color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
