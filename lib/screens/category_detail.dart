import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/category_model.dart';
import '../providers/meal_provider.dart';
import 'meal_screen.dart';
class CategoryDetail extends StatelessWidget {
  final CategoryModel category;
  const CategoryDetail({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        centerTitle: true,
      ),
      body: Consumer<MealProvider>(builder: (context, provider, _) {
        final meals = provider.getByCategory(category.id);
        return meals.isEmpty
            ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.hourglass_empty,
                  color: Colors.amberAccent.shade700,
                  size: 50,
                ),
                Text(
                  "${category.title} mavjud emas!",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ))
            : MealsScreen(meals: meals);
      }),
    );
  }
}