import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../size_config.dart';

class Categories extends StatefulWidget {
  
  const Categories({Key key}) : super(key: key);

  @override
  
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> categories = [
    "All",
    "Indian",
    "Mexican",
    "Chinese",
    "Uzbek",
    "Vegan"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategoryItem(index),
        ),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2,
            vertical: SizeConfig.defaultSize / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize * 1.6,
          ),
          color: selectedIndex == index
              ? Color.fromARGB(255, 235, 241, 234)
              : Colors.transparent,
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index
                ? kPrimaryColor
                : const Color(0xFFC2C2B5),
          ),
        ),
      ),
    );
  }
}
