import 'package:flutter/material.dart';
import 'package:food_recipe/models/navItems.dart';
import 'package:food_recipe/screens/Start/demo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        title: 'Recipe',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0.0),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const DemoScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}