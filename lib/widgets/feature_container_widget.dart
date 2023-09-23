import 'package:design1_fl_hero_games/utils/theme.dart';
import 'package:flutter/material.dart';

class FeatureContainerWidget extends StatelessWidget {
  const FeatureContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 191, 248, 192),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Positive Vibes",
                  style: Styles.subtitle2,
                ),
                const SizedBox(height: 5),
                Text(
                  "Boost your mood with \npositive vibes",
                  style: Styles.description,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_circle,
                          color: CColors.green,
                        )),
                    const Text("10 mins"),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/icon.png"),
            )
          ],
        ),
      ),
    );
  }
}
