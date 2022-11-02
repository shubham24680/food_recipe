import 'package:flutter/material.dart';
import 'package:food_recipe/models/constants.dart';
import 'package:food_recipe/screens/camera.dart';
import 'package:food_recipe/screens/home/home_screen.dart';
import 'package:food_recipe/screens/plans.dart';
import 'package:food_recipe/screens/profile/profitScreen.dart';
import 'package:food_recipe/screens/sheets/recipe.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;
  final Color color;

  NavItem(
      {required this.color,
      required this.id,
      required this.icon,
      required this.destination});

  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 0;

  void chnageNavIndex({required int index}) {
    selectedIndex = index;
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/home.svg",
      color: kPrimaryColor,
      destination: const HomeScreen(),
    ),
    NavItem(
      id: 2,
      icon: "assets/icons/list.svg",
      color: const Color(0xFFff9f1c),
      destination: const Recipe(),
    ),
    NavItem(
      id: 3,
      icon: "assets/icons/camera.svg",
      color: const Color(0xFF577399),
      destination: const Camera(),
    ),
    NavItem(
      id: 4,
      icon: "assets/icons/chef_nav.svg",
      color: const Color(0xFFD82D40),
      destination: const Plans(),
    ),
    NavItem(
      id: 5,
      icon: "assets/icons/user.svg",
      color: const Color(0xFF0081a7),
      destination: const ProfileScreen(),
    ),
  ];
}
