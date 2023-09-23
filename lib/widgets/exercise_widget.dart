import 'package:design1_fl_hero_games/models/exercise.dart';
import 'package:design1_fl_hero_games/utils/theme.dart';
import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  final Exercise exercise;
  const ExerciseWidget({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        width: 20,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: exercise.backgroundColor),
        child: ListTile(
          leading: Image.asset("assets/${exercise.iconName}.png"),
          title: Text(
            exercise.title,
            style: Styles.subtitle,
          ),
        ),
      ),
    );
  }
}
