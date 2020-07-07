import 'package:flutter/material.dart';

Map<int, Color> kSwatchColorMap = {
  50: Color(0xFFCEA2FD).withOpacity(.1),
  100: Color(0xFFCEA2FD).withOpacity(.2),
  200: Color(0xFFCEA2FD).withOpacity(.3),
  300: Color(0xFFCEA2FD).withOpacity(.4),
  400: Color(0xFFCEA2FD).withOpacity(.5),
  500: Color(0xFFCEA2FD).withOpacity(.6),
  600: Color(0xFFCEA2FD).withOpacity(.7),
  700: Color(0xFFCEA2FD).withOpacity(.8),
  800: Color(0xFFCEA2FD).withOpacity(.9),
  900: Color(0xFFCEA2FD).withOpacity(1),
};

MaterialColor kSwatchColor = MaterialColor(0xFFCEA2FD, kSwatchColorMap);

TextStyle kIntroTitleStyle =
    TextStyle(fontFamily: 'Archivo', fontSize: 40, color: Color(0xFF220F3B));

TextStyle kIntroSkipStyle =
    TextStyle(fontFamily: 'Archivo', fontSize: 20, color: Color(0xFF220F3B));
