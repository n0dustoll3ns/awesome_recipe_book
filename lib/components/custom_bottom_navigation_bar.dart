import 'package:awesome_recipe_book/constants.dart';
import 'package:awesome_recipe_book/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../models/NavItem.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 3),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 7),
              blurRadius: 30,
              color: Color(0xFFab1a39).withOpacity(0.2),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              navItems.items.length,
              (index) => buildIconNavItemBar(
                isActive: navItems.selecetedIndex == index ? true : false,
                icon: navItems.items[index].icon,
                press: (){},
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildIconNavItemBar(
      {NavItems navItems, String icon, Function press, bool isActive = false}) {
    return IconButton(
      onPressed: press,
      icon: SvgPicture.asset(
        icon,
        color: isActive ? kPrimaryColor: Color(0xffd1d4d4),
        height: 22,
      ),
    );
  }
}
