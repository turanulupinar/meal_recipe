import 'package:flutter/material.dart';

import '../../core/customization/custom_editor_coice_card.dart';
import '../../core/customization/custom_popular_recipes_minimal.dart';
import '../../core/customization/custom_title_and_seemore.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 30, left: 20, right: 20, top: 20),
              child: SearchBar(
                hintText: "Search...",
                controller: searchController,
                leading: const Icon(Icons.search),
                onTap: () {
                  // pageview - yemek fotoğrafları
                },
              ),
            ),
            customTitleSeeMoreWidget(
                title: "Popular Recipes", moreName: "View All"),
            const CustomPopularRecipesMinimal(),
            customTitleSeeMoreWidget(
                title: "Editor's Choice", moreName: "View All"),
            const EditorsCoiceCard()
          ],
        ),
      ),
    );
  }
}
