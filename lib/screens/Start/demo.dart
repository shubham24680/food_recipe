import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:food_recipe/models/constants.dart';
// import 'package:food_recipe/screens/Start/loginScreen.dart';
// import 'package:food_recipe/screens/Start/signupScreen.dart';
// import 'package:google_fonts/google_fonts.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        alignment: Alignment.center,
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            height: 700,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Cook It",
                  style: GoogleFonts.notoSerif(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                ),
                Text(
                  "Easy and healthy recipes for your balance diet.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.varelaRound(
                      fontSize: 16, color: Colors.grey[800]),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.red[300],
                    fixedSize: const Size(300, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Register",
                    style: GoogleFonts.rajdhani(fontSize: 24),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.red[300],
                    fixedSize: const Size(300, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: GoogleFonts.rajdhani(fontSize: 24),
                  ),
                ),
                Divider(
                  height: 100,
                  color: Colors.red[300],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    fixedSize: const Size(300, 40),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 80),
                      SvgPicture.asset(
                        'assets/icons/google.svg',
                        height: 24,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Google",
                        style: GoogleFonts.rajdhani(
                            fontSize: 24, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    fixedSize: const Size(300, 40),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 65),
                      SvgPicture.asset(
                        'assets/icons/facebook.svg',
                        height: 36,
                      ),
                      Text(
                        "Facebook",
                        style: GoogleFonts.rajdhani(
                            fontSize: 24, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    fixedSize: const Size(300, 40),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 80),
                      SvgPicture.asset(
                        'assets/icons/microsoft.svg',
                        height: 24,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Microsoft",
                        style: GoogleFonts.rajdhani(
                            fontSize: 24, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

// class DemoScreen extends StatelessWidget {
//   const DemoScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightGreen[100],
//       body: SafeArea(
//         child: Center(
//             child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 margin: const EdgeInsets.all(6),
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 decoration: BoxDecoration(
//                   color: kPrimaryColor,
//                   borderRadius: BorderRadius.circular(25.0),
//                 ),
//                 child: Image.asset(
//                   "assets/images/app.png",
//                   color: Colors.white,
//                 ),
//               ),
//               const SizedBox(height: 50),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 80.0),
//                 child: Text(
//                   "Discover Your Tasty Recipe Here",
//                   style: GoogleFonts.dynalight(
//                       fontWeight: FontWeight.bold, fontSize: 40),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Text(
//                   "Explore your delecious recipe based on your interest and taste it",
//                   style: GoogleFonts.lexend(fontSize: 16),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(height: 50),
//               buttons(context, 1, Colors.white, "Register", Colors.black),
//               const SizedBox(height: 10),
//               buttons(context, 2, kPrimaryColor, "Sign In", Colors.white),
//               const SizedBox(height: 10),
//             ],
//           ),
//         )),
//       ),
//     );
//   }

// buttons(context, id, color, name, textColor) {
//   return InkWell(
//     onTap: () {
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) =>
//                 id == 1 ? const SignupScreen() : const LoginScreen(),
//           ));
//     },
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25.0),
//       child: Container(
//         width: double.maxFinite,
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Center(
//             child: Text(
//               name,
//               style: GoogleFonts.lexend(
//                   fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }
