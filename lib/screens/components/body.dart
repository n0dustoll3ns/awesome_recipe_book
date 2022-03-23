import 'package:awesome_recipe_book/constants.dart';
import 'package:awesome_recipe_book/size_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Categories(),
      ],
    );
  }
}

