import 'package:flutter/material.dart';

enum ColorE { blue, nightblue, errorColor }

extension TitleFontExtension on ColorE {
  colorSet() {
    switch (this) {
      case ColorE.errorColor:
        return const Color(0xffB71C1C);
      case ColorE.nightblue:
        return const Color(0xff004D40);
      case ColorE.blue:
        return const Color(0xff00695C);
      default:
        "Not found ";
    }
  }
}
