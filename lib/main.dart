import 'package:flutter/material.dart';
import 'package:recepie_app/models/recipe.dart';
import 'package:recepie_app/pages/home_page.dart';
import 'package:recepie_app/pages/login_page.dart';
import 'package:recepie_app/pages/recipe_page.dart';
import 'package:recepie_app/pages/splash_screen.dart';
//ignore_for_file: prefer_const_constructors

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recepie Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashScreen(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
