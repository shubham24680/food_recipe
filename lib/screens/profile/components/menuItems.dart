import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/models/constants.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem(
      {super.key,
      required this.image,
      required this.name,
      required this.press});
  final String image, name;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2,
            vertical: SizeConfig.defaultSize * 3),
        child: SafeArea(
          child: Row(children: [
            SvgPicture.asset(image),
            SizedBox(width: SizeConfig.defaultSize * 2),
            Text(
              name,
              style: GoogleFonts.varelaRound(
                  fontSize: SizeConfig.defaultSize * 1.6,
                  color: const Color(0xFF0081a7)),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: SizeConfig.defaultSize * 1.6,
              color: const Color(0xFF0081a7),
            ),
          ]),
        ),
      ),
    );
  }
}
