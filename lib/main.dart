// ignore_for_file: unused_element, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/Screens/Categories.dart';
import 'package:store/Screens/UpdateProductPage.dart';
import 'package:store/Screens/home_page.dart';

import 'Screens/onboarding_screen.dart';

void main() {
  runApp(const Store());
}

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: HexColor('333739'),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      routes: {
        OnBoardingScreen.id: (context) => OnBoardingScreen(),
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
        Categories.id: (context) => const Categories(),
      },
      initialRoute: OnBoardingScreen.id,
    );
  }
}
