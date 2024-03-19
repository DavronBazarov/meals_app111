import 'package:flutter/material.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/models/meal_model.dart';
import 'package:meals_app/providers/meal_provider.dart';
import 'package:provider/provider.dart';



class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.meals,
  });

  final List<MealModel> meals;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final meal = meals[index];
          return Card(
            color: Colors.black38,
            child: Column(
              children: [
                Text(
                  meal.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(meal.titleImage),
                          fit: BoxFit.cover),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Consumer<MealProvider>(builder: (context, f, _) {
                        return IconButton(
                          onPressed: () {
                            f.favorite(meal.id);
                          },
                          icon: meal.isFavorite
                              ? const Icon(Icons.favorite,
                                  color: Colors.red)
                              : const Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                        );
                      }),
                      Text(
                        "${meal.completeTime} min",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        "${meal.price} so'm",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
