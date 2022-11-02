import 'package:flutter/material.dart';
import 'package:food_recipe/components/navbar.dart';
import 'package:food_recipe/screens/profile/components/body.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

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
    backgroundColor: const Color(0xFF0081a7),
    leading: const SizedBox(),
    centerTitle: true,
    title: Text(
      "Profile",
      style: GoogleFonts.alatsi(fontSize: 24),
    ),
    actions: [
      TextButton(
        onPressed: () {},
        child: Text(
          "Edit",
          style: GoogleFonts.comicNeue(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6,
              fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
