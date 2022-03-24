import 'package:awesome_recipe_book/constants.dart';
import 'package:awesome_recipe_book/models/RecipeBundel.dart';
import 'package:awesome_recipe_book/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories.dart';
import 'recipe_bundel_card.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Categories(),
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
            child: GridView.builder(
              itemCount: recipeBundles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (context, index) =>
                  RecipeBundleCard(recipeBundle: recipeBundles[index]),
            ),
          ),
        ),
      ],
    );
  }
}
