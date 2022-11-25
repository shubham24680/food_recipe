import 'package:flutter/material.dart';
import 'package:food_recipe/models/constants.dart';
import 'package:food_recipe/screens/Start/signupScreen.dart';
import 'package:food_recipe/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/truck.png"),
                const SizedBox(height: 50.0),
                Text(
                  "Hello Again!",
                  style: GoogleFonts.dynalight(
                      fontSize: 52, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),
                Text(
                  "Welcome back, you've been missed!",
                  style: GoogleFonts.lexend(fontSize: 18),
                ),
                const SizedBox(height: 20.0),
                // Email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // focusedBorder: OutlinedInputBorder(),
                          hintText: "Email",
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: double.maxFinite,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.lexend(
                            fontWeight: FontWeight.bold, color: buttonColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.lexend(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: GoogleFonts.lexend(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
                      },
                      child: Text(
                        "Register now",
                        style: GoogleFonts.lexend(
                            fontWeight: FontWeight.bold, color: buttonColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
