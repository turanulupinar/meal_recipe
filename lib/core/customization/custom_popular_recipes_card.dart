import 'package:flutter/material.dart';
import 'package:meal_recipe/core/constant/custom_fonts/custom_fonts.dart.dart';
import 'package:meal_recipe/core/constant/dumm_constant.dart';

class CustomPopulerRecipeCard extends StatefulWidget {
  const CustomPopulerRecipeCard({super.key});

  @override
  State<CustomPopulerRecipeCard> createState() =>
      _CustomPopulerRecipeCardState();
}

class _CustomPopulerRecipeCardState extends State<CustomPopulerRecipeCard> {
  bool isSave = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 200,
          width: 250,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: NetworkImage(
                                DummyConstant.dummyMeal,
                              ),
                              fit: BoxFit.cover),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, top: 20, left: 150, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        height: 30,
                        width: 30,
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              isSave = !isSave;
                              setState(() {});
                            },
                            icon: Icon(
                              isSave == false
                                  ? Icons.bookmark_border_outlined
                                  : Icons.bookmark,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
                width: 200,
                child: Text(
                  "Healty Taco Salad with fresh vegetabla",
                  style: CustomFonts.topTitlemedium,
                  maxLines: 4,
                  overflow: TextOverflow.clip,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Row(
                  children: [
                    Icon(Icons.local_fire_department_outlined),
                    Text(
                      "120 Kcal",
                      style: CustomFonts.kcalandminTextStyle,
                    ),
                    Spacer(),
                    Icon(
                      color: Color.fromARGB(255, 58, 57, 57),
                      Icons.radio_button_off_rounded,
                      size: 10,
                    ),
                    Spacer(),
                    Icon(
                      Icons.access_time,
                      color: Color.fromARGB(255, 58, 57, 57),
                    ),
                    Text(
                      "18 min",
                      style: CustomFonts.kcalandminTextStyle,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
