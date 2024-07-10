import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meal_recipe/core/constant/dumm_constant.dart';
import 'package:meal_recipe/core/constant/custom_fonts/custom_fonts.dart.dart';
import 'package:meal_recipe/core/customization/custom_drawer.dart';
import 'package:meal_recipe/core/customization/custom_more_button.dart';
import 'package:meal_recipe/core/customization/custom_popular_recipes_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/searchpage");
              },
              icon: const Icon(Icons.search))
        ],
        title: const Text("günaydın \n elena"),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5, right: 320, top: 10),
              child: Text("Featured", style: CustomFonts.topTitlemedium),
            ),
            SizedBox(
              height: 250,
              width: 450,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          DummyConstant.dummyMeal))),
                              child: const Text(""),
                            ),
                            Positioned(
                              right: 20,
                              left: 120,
                              top: 150,
                              bottom: 10,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10, sigmaY: 10),
                                    child: Container(
                                      height: 80,
                                      width: 220,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Text("sandwich",
                                              style:
                                                  CustomFonts.topTitlemediumW)),
                                    )),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.access_time_sharp,
                                    color: Colors.white,
                                  ),
                                  Text("20 min",
                                      style: CustomFonts.topTitlesmallW),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        DummyConstant.dummyProfile),
                                  ),
                                  Text(
                                    "firuze",
                                    style: CustomFonts.topTitlesmallW,
                                  )
                                ],
                              ),
                            )
                          ],
                        ));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const Text("Category", style: CustomFonts.topTitlemedium),
                  const Spacer(),
                  CustomMoreButtons().customMoreButton("See All"),
                ],
              ),
            ),
            SizedBox(
                height: 70,
                width: 450,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: ChoiceChip(
                          selectedColor: Colors.red,
                          disabledColor: Colors.grey,
                          onSelected: (val) {
                            selectedIndex = val ? index : -1;

                            setState(() {});
                          },
                          selected: selectedIndex == index,
                          label: const Text(
                            "breakfast",
                            style: CustomFonts.topTitlesmall,
                          ),
                        ),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const Text("Popular Recipes",
                      style: CustomFonts.topTitlemedium),
                  const Spacer(),
                  CustomMoreButtons().customMoreButton("See All"),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: 450,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const CustomPopulerRecipeCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
