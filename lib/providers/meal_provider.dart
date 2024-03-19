import 'package:flutter/cupertino.dart';

import '../models/meal_model.dart';

class MealProvider with ChangeNotifier {
  final List<MealModel> _list = [
    MealModel(
      id: "m1",
      categoryId: "c1",
      title: "Lavash",
      images: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcVlvIwwMvS2mY75kmZsmnpillRY2d0oJcALuAprFY0zRuwvvQApi1Sj3482HorR5chDc&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK4TxFiM4ySPEMav44wNfZWPHxqJOOKYNBuxfzx1V_Tig6Ysk5k57fULLUGAjfnS4S8ao&usqp=CAU",
      ],
      completeTime: "45",
      description:
          "Toshkent shahar ekologiya bosh boshqarmasi tumanlararo xo‘jalik sudiga “Oqtepa lavash” snack barlar tarmog‘i faoliyatini to‘xtatish to‘g‘risida da’vo arizasi kiritdi. Bu haqda   boshqarma matbuot xizmati xabar bermoqda .",
      ingredient: ["Go'sh", "Xamir", "Sir", "Salat"],
      titleImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZT38wHaHz1EA_df8ARFoKtoDuZ868A4e3zA&usqp=CAU",
      price: 10,
    ),
    MealModel(
      id: "m2",
      categoryId: "c2",
      title: "Osh",
      images: [],
      completeTime: "12",
      description:
          "Toshkent shahar ekologiya bosh boshqarmasi tumanlararo xo‘jalik sudiga “Oqtepa lavash” snack barlar tarmog‘i faoliyatini to‘xtatish to‘g‘risida da’vo arizasi kiritdi. Bu haqda   boshqarma matbuot xizmati xabar bermoqda .",
      ingredient: ["Guruch", "Go'sh", "Sabzi"],
      titleImage:
          "https://e3.edimdoma.ru/data/posts/0002/3277/23277-ed4_wide.jpg?1631182672",
      price: 20,
    )
  ];

  List<MealModel> get allMeals {
    return _list;
  }
  void addMeal(MealModel meal){
    _list.add(meal);
    notifyListeners();
  }

  List<MealModel> getByCategory(String categoryID) {
    return _list.where((meal) => meal.categoryId == categoryID).toList();
  }

  List<MealModel> getFavoriteMeals(){
    return _list.where((element) => element.isFavorite).toList();
  }

  void favorite(String mealId) {
    for (var meal in _list) {
      if (meal.id == mealId) {
        meal.isFavorite = !meal.isFavorite;
      }
    }
    notifyListeners();
  }
}
