import 'package:flutter/material.dart';
import 'package:food_recipe/components/navbar.dart';
import 'package:food_recipe/models/constants.dart';
import 'package:food_recipe/screens/profile/components/body.dart';
import 'package:food_recipe/models/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavbar(),
    );
  }
}

buildAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    leading: const SizedBox(),
    centerTitle: true,
    title: const Text("Profile"),
    actions: [
      TextButton(
        onPressed: () {},
        child: Text(
          "Edit",
          style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6,
              fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
