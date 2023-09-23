import 'package:design1_fl_hero_games/const.dart';
import 'package:design1_fl_hero_games/utils/theme.dart';
import 'package:design1_fl_hero_games/widgets/bottom_nav_bar_widget.dart';
import 'package:design1_fl_hero_games/widgets/exercise_widget.dart';
import 'package:design1_fl_hero_games/widgets/feature_container_widget.dart';
import 'package:design1_fl_hero_games/widgets/status_container_widget.dart';
import 'package:design1_fl_hero_games/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined))],
        ),
        bottomNavigationBar: const BottomNavBarWidget(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                        style: Styles.bigTitle,
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Hello, ',
                          ),
                          TextSpan(
                            text: 'Sara Rose',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "How are you feeling today ?",
                        style: Styles.bigSubtitle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (final status in Const.statusList)
                  StatusContainerWidget(
                    status: status,
                  ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const TitleWidget(
              title: 'Feature',
            ),
            const FeatureContainerWidget(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.more_horiz,
                ),
              ],
            ),
            const TitleWidget(title: "Exercise"),
            Expanded(
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 75,
                  ),
                  itemCount: Const.exerciseList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final exercise = Const.exerciseList[index];
                    return ExerciseWidget(exercise: exercise);
                  }),
            )
          ],
        ));
  }
}
