import 'package:awesome_recipe_book/constants.dart';
import 'package:awesome_recipe_book/models/RecipeBundel.dart';
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
        RecipeBundleCard(),
      ],
    );
  }
}

class RecipeBundleCard extends StatelessWidget {
  const RecipeBundleCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundles[0].color,
          borderRadius: BorderRadius.circular(defaultSize * 1.8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      recipeBundles[0].title,
                      style: TextStyle(
                        fontSize: defaultSize * 2.2,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      recipeBundles[0].description,
                      style: TextStyle(color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: defaultSize * 0.5,
            ),
            AspectRatio(
                aspectRatio: 0.71,
                child: Image.asset(
                  recipeBundles[0].imageSrc,
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                )),
          ],
        ),
      ),
    );
  }
}
