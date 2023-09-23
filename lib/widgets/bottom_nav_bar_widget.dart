import 'package:design1_fl_hero_games/utils/theme.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
          label: "a",
          icon: Icon(
            Icons.home_filled,
            color: CColors.green,
          )),
      BottomNavigationBarItem(
          label: "b",
          icon: Icon(
            Icons.grid_view,
            color: CColors.iconColor,
          )),
      BottomNavigationBarItem(
          label: "c",
          icon: Icon(
            Icons.calendar_today_outlined,
            color: CColors.iconColor,
          )),
      BottomNavigationBarItem(
          label: "d",
          icon: Icon(
            Icons.person,
            color: CColors.iconColor,
          )),
    ]);
  }
}
