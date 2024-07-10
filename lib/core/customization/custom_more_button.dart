import 'package:flutter/material.dart';

import '../constant/custom_fonts/custom_fonts.dart.dart';

class CustomMoreButtons {
  TextButton customMoreButton(String title) {
    return TextButton(
        onPressed: () {}, child: Text(title, style: CustomFonts.moreTextStyle));
  }
}
