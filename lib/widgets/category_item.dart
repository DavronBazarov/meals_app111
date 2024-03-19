
import 'package:flutter/material.dart';
import 'package:meals_app/models/category_model.dart';

import '../screens/category_detail.dart';



class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key, required this.category,
  });
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>    Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryDetail(category: category))),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                  decoration:  BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(category.image)))),
              Container(color: Colors.black.withOpacity(0.5)),
               Positioned(
                left: 10,
                child: Text(category.title,
                    style: const TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}