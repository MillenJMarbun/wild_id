import 'package:flutter/material.dart';

Color bgcolor =  Color(0xff131619);
Color mywhite = const Color(0xFFfefefe);
Color maincol = const Color(0xFF42bda4);
Color navy = Color(0xff01203e);
Color whitegrey = Color(0xffecf3f7);
Color quizbg = Color(0xff343862);
Color descriptionbg = Color(0xff25262a);







































































































































































class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

