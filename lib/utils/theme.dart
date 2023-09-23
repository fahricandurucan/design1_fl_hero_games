import 'package:flutter/material.dart';

class CColors {
  static const mainColor = Color(0xFF0078D4);
  static const white = Colors.white;
  static const textColor = Color(0xffCECECE);
  static const backgroundcolor = Color(0xff161616);
  static const iconColor = Color(0xff373737);
  static const foregroundBlack = Color(0xff202020);
  static const subtitleColor = Color(0xff979797);
  static const sideColor = Color(0x4cb7b7b3);
  static const black = Colors.black;
  static const green = Colors.green;
  static const orange = Colors.orange;
  static const red = Colors.red;
  static const statusColor = Color(0xffD9D9D9);
  static const logoRed = Color(0xffe75236);
  static const logoOrange = Color(0xffe68c35);
  static const logoYellow1 = Color(0xffdbae34);
  static const logoYellow2 = Color.fromARGB(255, 206, 52, 52);
  static const titleColor = Color(0xFF865644);
  static const featureTitleColor = Color.fromARGB(255, 38, 57, 66);

  static const Map<int, Color> primarySwatchColors = {
    50: Color.fromRGBO(0, 120, 212, .1),
    100: Color.fromRGBO(0, 120, 212, .2),
    200: Color.fromRGBO(0, 120, 212, .3),
    300: Color.fromRGBO(0, 120, 212, .4),
    400: Color.fromRGBO(0, 120, 212, .5),
    500: Color.fromRGBO(0, 120, 212, .6),
    600: Color.fromRGBO(0, 120, 212, .7),
    700: Color.fromRGBO(0, 120, 212, .8),
    800: Color.fromRGBO(0, 120, 212, .9),
    900: Color.fromRGBO(0, 120, 212, 1),
  };

  static const primarySwatch = MaterialColor(0xff0078D4, primarySwatchColors);
}

class Styles {
  static TextStyle get bigTitle => const TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w400,
        color: CColors.titleColor,
      );
  static TextStyle get bigSubtitle => const TextStyle(
        fontSize: 16.5,
        fontWeight: FontWeight.w400,
        color: CColors.titleColor,
      );

  static TextStyle get title => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: CColors.black,
      );

  static TextStyle get subtitle => const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: CColors.black,
      );
  static TextStyle get subtitle2 => const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 38, 57, 66),
      );
  static TextStyle get clickTitle => const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: CColors.green,
      );

  static TextStyle get description => const TextStyle(
        fontSize: 15,
        height: 1.23,
        color: CColors.black,
      );

  // static TextStyle get biggerSubtitle => const TextStyle(
  //       fontSize: 15,
  //       fontWeight: FontWeight.w300,
  //       color: CColors.subtitleColor,
  //     );
  // static TextStyle get biggerTitle => const TextStyle(
  //       fontSize: 24,
  //       fontWeight: FontWeight.w500,
  //     );

  // static TextStyle get evenBiggerTitle => const TextStyle(
  //       fontSize: 36,
  //       fontWeight: FontWeight.w500,
  //     );
}
