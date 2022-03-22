import 'package:awesome_recipe_book/constants.dart';
import 'package:awesome_recipe_book/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

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

class Categories extends StatefulWidget {
  const Categories({Key key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Indian", "Mexican", "Chinese", "Uzbek", "Vegan"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize * 3.5,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildCategoryItem(index),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return Container(
      margin: EdgeInsets.only(left: SizeConfig.defaultSize*2),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.defaultSize*2,
        vertical: SizeConfig.defaultSize/2
      ),
      decoration: BoxDecoration(
        color: Color(0xFFEFF3EE),
      ),
      child: Text(
        categories[index],
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
