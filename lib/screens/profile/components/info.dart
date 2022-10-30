import 'package:flutter/material.dart';
import 'package:food_recipe/models/constants.dart';
import 'package:food_recipe/models/size_config.dart';

class Info extends StatelessWidget {
  const Info(
      {super.key,
      required this.image,
      required this.name,
      required this.email});
  final String image, name, email;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize * 24,
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: SizeConfig.defaultSize * 15,
              color: kPrimaryColor,
            ),
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: SizeConfig.defaultSize * 14,
                width: SizeConfig.defaultSize * 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: SizeConfig.defaultSize,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.defaultSize / 2),
              Text(
                name,
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize * 2.2,
                  color: kTextColor,
                ),
              ),
              SizedBox(height: SizeConfig.defaultSize / 2),
              Text(
                email,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF8492A2),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
