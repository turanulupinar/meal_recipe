import 'package:flutter/material.dart';
import 'package:meal_recipe/core/constant/custom_fonts/custom_fonts.dart.dart';


import '../extension/color_extension.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorE.blue.colorSet(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              "Profil",
              style: CustomFonts.topTitlemedium
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.chevron_right_outlined)),
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text(
              "kaydedilenler",
            style: CustomFonts.topTitlemedium
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.chevron_right_outlined)),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              "ayarlar",
             style: CustomFonts.topTitlemedium
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.chevron_right_outlined)),
          ),
        ],
      ),
    );
  }
}
