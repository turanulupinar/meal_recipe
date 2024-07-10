import 'package:flutter/material.dart';
import 'package:meal_recipe/core/constant/custom_fonts/custom_fonts.dart.dart';
import 'package:meal_recipe/core/constant/dumm_constant.dart';

import '../extension/color_extension.dart';

class EditorsCoiceCard extends StatefulWidget {
  const EditorsCoiceCard({super.key});

  @override
  State<EditorsCoiceCard> createState() => _EditorsCoiceCardState();
}

class _EditorsCoiceCardState extends State<EditorsCoiceCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500,
        width: 450,
        child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Container(
                          height: 120,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              image: const DecorationImage(
                                  image: NetworkImage(DummyConstant.dummyMeal),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 150,
                            child: const Text(
                              "Easy homemade beef burger",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomFonts.topTitlemedium2,
                            ),
                          ),
                          const SizedBox(
                              width: 150,
                              height: 40,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        DummyConstant.dummyProfile),
                                    radius: 15,
                                    child: Text(""),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "James Spader",
                                    style: CustomFonts.kcalandminTextStyle,
                                  )
                                ],
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: ColorE.nightblue.colorSet()),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              size: 18,
                              Icons.arrow_forward,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
