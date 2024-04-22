import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#757575');

  static Color gray400 = fromHex('#c0c0c0');

  static Color black900A2 = fromHex('#a2000000');

  static Color gray800 = fromHex('#3c3c3a');

  static Color bluegray100 = fromHex('#d8d7d7');

  static Color gray200 = fromHex('#ececec');

  static Color teal400 = fromHex('#2b90a6');

  static Color teal300 = fromHex('#64abcb');

  static Color black900 = fromHex('#000000');

  static Color indigo60051 = fromHex('#512862a4');

  static Color indigo60052 = fromHex('#512962a4');

  static Color whiteA701 = fromHex('#fffdfd');

  static Color indigo700 = fromHex('#275c9a');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo600 = fromHex('#2962a4');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
