import 'package:flutter/material.dart';
import 'ArenaColorTheme.dart';

class ArenaFontTheme {

  static const String fontFamily = 'Roboto';

  static const TextStyle display1 = TextStyle( // h4 -> display1
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 32,
    color: ArenaColorTheme.titleTextColor,
  );

}