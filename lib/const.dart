import 'package:design1_fl_hero_games/models/exercise.dart';
import 'package:flutter/material.dart';

class Const {
  static const statusList = <String>["love", "cool", "happy", "sad"];
  static List<Exercise> exerciseList = <Exercise>[
    Exercise(
      title: "Relaxation",
      iconName: "relaxation",
      backgroundColor: const Color.fromARGB(255, 249, 216, 255),
    ),
    Exercise(
        title: "Meditation",
        iconName: "meditation",
        backgroundColor: const Color.fromARGB(255, 255, 225, 235)),
    Exercise(
        title: "Breathing",
        iconName: "breathing",
        backgroundColor: const Color.fromARGB(255, 255, 241, 221)),
    Exercise(
        title: "Yoga", iconName: "yoga", backgroundColor: const Color.fromARGB(255, 231, 244, 255)),
  ];
}
