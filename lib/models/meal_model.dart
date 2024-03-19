class MealModel {
  String id;
  String categoryId;
  String title;
  String titleImage;
  String description;
  List<String> ingredient;
  List<String> images;
  String completeTime;
  double price;
  bool isFavorite;

  MealModel(
      {required this.id,
      required this.categoryId,
      required this.title,
      required this.images,
      required this.completeTime,
      required this.description,
      required this.ingredient,
      this.isFavorite = false,
      required this.titleImage,
      required this.price});
}
