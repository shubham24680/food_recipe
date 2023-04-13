import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/models/constants.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:food_recipe/screens/Start/demo.dart';
import 'package:food_recipe/screens/Start/loginScreen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: SizeConfig.defaultSize * 30,
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/chef.png"),
          InkWell(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const DemoScreen()));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.defaultSize * 2,
                  vertical: SizeConfig.defaultSize * 1.5),
              child: SafeArea(
                child: Row(children: [
                  SvgPicture.asset("assets/icons/logout.svg"),
                  SizedBox(width: SizeConfig.defaultSize * 2),
                  Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: SizeConfig.defaultSize * 1.6,
                        color: kTextColor),
                  ),
                  const Spacer(),
                  Icon(Icons.arrow_forward_ios,
                      size: SizeConfig.defaultSize * 1.6, color: kTextColor),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
