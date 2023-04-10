import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9004c = fromHex('#4c000000');

  static Color gray700 = fromHex('#6a6565');

  static Color blue700 = fromHex('#2167dd');

  static Color gray900 = fromHex('#141414');

  static Color tealA400 = fromHex('#00f5d0');

  static Color teal400 = fromHex('#36a07c');

  static Color gray80051 = fromHex('#513e3e3e');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color black90001 = fromHex('#150000');

  static Color black900Cc = fromHex('#cc000000');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color yellow900 = fromHex('#fb7918');

  static Color redA70002 = fromHex('#ee0e0e');

  static Color blueGray900 = fromHex('#2e2e2e');

  static Color redA70001 = fromHex('#f40000');

  static Color black90003 = fromHex('#0a0a0a');

  static Color whiteA700 = fromHex('#ffffff');

  static Color redA700 = fromHex('#fe0000');

  static Color black90002 = fromHex('#090909');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
