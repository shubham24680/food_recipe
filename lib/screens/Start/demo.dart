import 'package:flutter/material.dart';
import 'package:food_recipe/models/constants.dart';
import 'package:food_recipe/screens/Start/loginScreen.dart';
import 'package:food_recipe/screens/Start/signupScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(6),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Image.asset(
                  "assets/images/app.png",
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: Text(
                  "Discover Your Tasty Recipe Here",
                  style: GoogleFonts.dynalight(
                      fontWeight: FontWeight.bold, fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Explore your delecious recipe based on your interest and taste it",
                  style: GoogleFonts.lexend(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              buttons(context, 1, Colors.white, "Registor", Colors.black),
              const SizedBox(height: 10),
              buttons(context, 2, kPrimaryColor, "Sign In", Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  buttons(context, id, color, name, textColor) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  id == 1 ? const SignupScreen() : const LoginScreen(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: Text(
                name,
                style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
