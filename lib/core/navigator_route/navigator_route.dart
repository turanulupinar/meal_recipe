import 'package:flutter/material.dart';
import 'package:meal_recipe/pages/search_page/search_page.dart';



import '../../pages/detail_page/detail_page.dart';
import '../../pages/home_page/home_page.dart';

Map<String, Widget Function(BuildContext)> route = {
  "/homepage": (context) => const HomePage(),
  "/detailpage": (context) => const DetailPage(),
  "/searchpage" : (context) => const SearchPage()

};