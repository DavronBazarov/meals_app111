import 'package:flutter/material.dart';
import 'package:meals_app/providers/meal_provider.dart';
import 'package:meals_app/screens/meal_screen.dart';
import 'package:provider/provider.dart';

import 'add_product_screen.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    final meals = context.watch<MealProvider>().allMeals;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Mahsulotlar"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddProduct()));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: MealsScreen(meals: meals),
    );
  }
}
