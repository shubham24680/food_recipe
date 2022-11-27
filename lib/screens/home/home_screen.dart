import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/components/navbar.dart';
import 'components/body.dart';
import 'package:food_recipe/models/size_config.dart';
import 'components/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      drawer: const DrawerScreen(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavbar(),
    );
  }
}

buildAppBar() {
  return AppBar(
    leading: Builder(
      builder: ((context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: SvgPicture.asset(
              "assets/icons/menu.svg",
            ),
          )),
    ),
    centerTitle: true,
    title: Image.asset(
      "assets/images/logo.jpg",
      height: SizeConfig.defaultSize * 8,
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg"),
        onPressed: () {},
      ),
      SizedBox(
        width: SizeConfig.defaultSize * 0.5,
      )
    ],
  );
}
