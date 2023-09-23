import 'package:design1_fl_hero_games/utils/extension.dart';
import 'package:design1_fl_hero_games/utils/theme.dart';
import 'package:flutter/material.dart';

class StatusContainerWidget extends StatelessWidget {
  final String status;
  const StatusContainerWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              color: CColors.statusColor,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset("assets/$status.png"),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            status.capitalizeFirstLetter,
            style: const TextStyle(color: CColors.black),
          ),
        ],
      ),
    );
  }
}
