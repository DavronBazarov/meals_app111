import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/providers/category_provider.dart';
import 'package:meals_app/providers/meal_provider.dart';
import 'package:meals_app/screens/aplication.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CategoryProvider>(create: (_) => CategoryProvider()),
    ChangeNotifierProvider<MealProvider>(create: (_) => MealProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.adventPro().fontFamily,
          appBarTheme: AppBarTheme(
              iconTheme: const IconThemeData(color: Colors.white),
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: GoogleFonts.adventPro().fontFamily,
                  fontWeight: FontWeight.w500),
              backgroundColor: const Color(0xff0659d9)),
          primaryColor:const Color(0xff0659d9)),
      debugShowCheckedModeBanner: false,
      home: const Application(),
    );
  }
}
