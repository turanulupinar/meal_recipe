import 'package:flutter/material.dart';

import '../constant/custom_fonts/custom_fonts.dart.dart';
import 'custom_more_button.dart';

Widget customTitleSeeMoreWidget(
    {required String title, required String moreName}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: Row(
      children: [
        Text(title, style: CustomFonts.topTitlemedium),
        const Spacer(),
        CustomMoreButtons().customMoreButton(moreName),
      ],
    ),
  );
}
