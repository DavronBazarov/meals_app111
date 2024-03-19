import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_screen.dart';
import 'package:meals_app/widgets/app_drawer.dart';
import 'package:provider/provider.dart';

import '../providers/meal_provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}
class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MealProvider>();
    final meals = provider.getFavoriteMeals();
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text("Sevimlilar"),
        centerTitle: true,
      ),
      body: MealsScreen(meals: meals),
    );
  }
}
