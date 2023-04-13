import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_recipe/models/navItems.dart';
import 'package:food_recipe/screens/Start/demo.dart';
import 'package:food_recipe/screens/home/home_screen.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => NavItems(),
    //   child:
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0.0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const OptionsScreen(),
      //     Scaffold(
      //         body: StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return const HomeScreen();
      //     } else {
      //       return const DemoScreen();
      //     }
      //   },
      // )),
      debugShowCheckedModeBanner: false,
      // ),
    );
  }
}
