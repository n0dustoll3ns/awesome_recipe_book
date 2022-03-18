import 'package:flutter/material.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;
  NavItem({
    required this.destination,
    required this.id,
    required this.icon,
  });
}

bool destinationChecker (){
  var destination;
  if (destination != null){return true;}{return false;}
}