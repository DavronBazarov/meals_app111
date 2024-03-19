
class CategoryModel{
  String id;
  String title;
  String image;

  CategoryModel({required this.id, required this.title, required this.image});
}

// class Categories{
//   final List<CategoryModel> _list = [
//     CategoryModel(id: "c1", title: "Fast Food", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRepSwSEQ6wTcUeQNf3K0zmX1Ks7m5xEguZ9g&usqp=CAU"),
//     CategoryModel(id: "c2", title: "Milliy Taomlar", image: "https://www.agro.uz/wp-content/uploads/2023/03/1-9.jpg"),
//     CategoryModel(id: "c3", title: "Italya Taomlari", image: "https://fondue.bg/wp-content/uploads/2019/09/italiancuisine.jpg"),
//     CategoryModel(id: "c4", title: "Fransiya Taomlari", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNw9sDR8zgXZ7vLKm5mZWaDz89kTz12_gGlg&usqp=CAU"),
//     CategoryModel(id: "c5", title: "Ichimliklar", image: "https://www.forksandfingers.co.uk/wp-content/uploads/2020/07/soft.jpeg"),
//     CategoryModel(id: "c6", title: "Salatlar", image: "https://www.eatingwell.com/thmb/lI3yRRJ0xLduIxNQoAFehyyY7os=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/romaine-salad-with-orange-and-radish-43311e8909b444aba0d356d951262384.jpg"),
//   ];
//
//   List<CategoryModel> get categories{
//     return _list;
//   }
// }