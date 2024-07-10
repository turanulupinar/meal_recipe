import 'package:flutter/material.dart';
import 'package:meal_recipe/core/constant/custom_fonts/custom_fonts.dart.dart';
import 'package:meal_recipe/core/constant/dumm_constant.dart';

class CustomPopularRecipesMinimal extends StatefulWidget {
  const CustomPopularRecipesMinimal({super.key});

  @override
  State<CustomPopularRecipesMinimal> createState() =>
      _CustomPopularRecipesMinimalState();
}

class _CustomPopularRecipesMinimalState
    extends State<CustomPopularRecipesMinimal> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      height: 160,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(DummyConstant.dummyMeal),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 90,
                    child: Text(
                      "Egg & avacado ",
                      style: CustomFonts.kcalandminTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
