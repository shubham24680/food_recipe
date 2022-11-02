import 'package:flutter/material.dart';
import 'package:food_recipe/components/navbar.dart';
import 'home/home_screen.dart';
import 'home/components/drawer.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      drawer: const DrawerScreen(),
      body: Center(
        child: Image.asset("assets/images/soon.png"),
      ),
      bottomNavigationBar: const MyBottomNavbar(),
    );
  }
}
