import 'package:design1_fl_hero_games/controllers/home_page_controller.dart';
import 'package:design1_fl_hero_games/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeatureContainerWidget extends StatelessWidget {
  const FeatureContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomePageController());
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
              controller: controller.pageController.value,
              onPageChanged: (value) {
                controller.pageNo.value = value;
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: controller.pageController.value,
                  builder: (context, child) {
                    return child!;
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      width: double.infinity,
                      height: 130,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 218, 255, 219),
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
                  ),
                );
              }),
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                3,
                (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      child: Icon(Icons.circle,
                          size: 8,
                          color: controller.pageNo.value == index
                              ? CColors.activeCirlceColor
                              : CColors.inactiveCirlceColor),
                    )).toList(),
          ),
        ),
      ],
    );
  }
}
