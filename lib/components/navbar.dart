import 'package:flutter/material.dart';
import 'package:food_recipe/models/constants.dart';
import 'package:food_recipe/models/navItems.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:provider/provider.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavItems>(
      builder: ((context, navItems, child) => Container(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 3),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                offset: const Offset(0, -7),
                blurRadius: 30,
                color: const Color(0xFF4B1A39).withOpacity(0.2),
              ),
            ]),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    navItems.items.length,
                    (index) => buildNavbarItems(
                          isActive:
                              navItems.selectedIndex == index ? true : false,
                          icon: navItems.items[index].icon,
                          color: navItems.items[index].color,
                          press: () {
                            navItems.chnageNavIndex(index: index);
                            if (navItems.items[index].destinationChecker())
                              // ignore: curly_braces_in_flow_control_structures
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        navItems.items[index].destination),
                              );
                          },
                        )),
              ),
            ),
          )),
    );
  }

  buildNavbarItems({icon, color, press, isActive = false}) {
    return IconButton(
      onPressed: press,
      icon: SvgPicture.asset(
        icon,
        color: isActive ? color : const Color(0xFFD1D4D4),
        height: 22,
      ),
    );
  }
}
