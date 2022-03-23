import 'package:awesome_recipe_book/constants.dart';
import 'package:awesome_recipe_book/models/RecipeBundel.dart';
import 'package:awesome_recipe_book/size_config.dart';
import 'package:flutter/gestures.dart';
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
        RecipeBundleCard(),
      ],
    );
  }
}
