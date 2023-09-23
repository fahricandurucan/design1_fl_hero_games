import 'package:design1_fl_hero_games/utils/theme.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.title,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "See more >",
              style: Styles.clickTitle,
            ),
          ),
        ],
      ),
    );
  }
}
