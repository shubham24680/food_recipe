import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/models/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home/components/drawer.dart';
import 'home/home_screen.dart';
import 'package:food_recipe/components/navbar.dart';

class Plans extends StatelessWidget {
  const Plans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: buildAppBar(),
      drawer: const DrawerScreen(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize),
            child: const Cards(
              id: 1,
              title: "7 Day Meal Plan",
              subtitle: "Basic",
              price: "FREE",
            ),
          ),
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize),
            child: const Cards(
              id: 2,
              title: "CookBook",
              subtitle: "Platinum",
              price: "\$50",
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavbar(),
    );
  }
}

class Cards extends StatelessWidget {
  final String title, subtitle, price;
  final int id;
  const Cards(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2,
            vertical: SizeConfig.defaultSize * 1.5,
          ),
          decoration: BoxDecoration(
            color: Colors.white70,
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: GoogleFonts.bilbo(
                    color: const Color(0xFFD82D40),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                title,
                style: GoogleFonts.varelaRound(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                price,
                style: GoogleFonts.alatsi(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 15),
              const Center(child: Hover()),
              const SizedBox(height: 30),
              id == 1
                  ? Column(
                      children: [
                        selected(true, "7 Day access"),
                        selected(false, "No Ads"),
                        selected(false, "Meal Plans"),
                        selected(false, "Combo Meals Recipes"),
                      ],
                    )
                  : Column(
                      children: [
                        selected(true, "Access all Recipes"),
                        selected(true, "No Ads"),
                        selected(true, "Meal Plans"),
                        selected(true, "Combo Meals Recipes"),
                      ],
                    )
            ],
          ),
        )
      ],
    );
  }
}

class Hover extends StatefulWidget {
  const Hover({super.key});

  @override
  State<Hover> createState() => _HoverState();
}

class _HoverState extends State<Hover> {
  var ishover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: ((event) {
        setState(() {
          ishover = true;
        });
      }),
      onExit: ((event) {
        setState(() {
          ishover = false;
        });
      }),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor:
                  ishover ? const Color(0xFFD82D40) : Colors.transparent,
              elevation: 0,
              side: const BorderSide(color: Color(0xFFD82D40)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 2),
              )),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize * 5,
                vertical: SizeConfig.defaultSize),
            child: Text(
              "Purchase Now",
              style: GoogleFonts.varelaRound(
                  color: ishover ? Colors.white : const Color(0xFFD82D40),
                  fontSize: 20),
            ),
          )),
    );
  }
}

selected(check, offer) {
  return Row(
    children: [
      SvgPicture.asset(
        "assets/icons/tick.svg",
        color: check == true
            ? const Color(0xFFD82D40)
            : const Color(0xFFD82D40).withOpacity(0.5),
        height: 16,
      ),
      const SizedBox(width: 20),
      Text(
        offer,
        style: GoogleFonts.varelaRound(
            color: check == true ? Colors.black : Colors.black45,
            // fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
      const SizedBox(height: 20)
    ],
  );
}
