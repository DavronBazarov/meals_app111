import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/providers/category_provider.dart';
import 'package:provider/provider.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String? selectedCategoryName;
  String? categoryId;
  TextEditingController? nameController;
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = context.watch<CategoryProvider>().showCategories;

    log("${categories.length}");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Mahsulot qo'shish"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              isExpanded: true,
              hint: const Text("Kategoryalar"),
              value: selectedCategoryName??categories.first.title,
              items: categories
                  .map((category) => DropdownMenuItem<String>(
                        value: category.title,
                        child: Text(category.title),
                      )).toList(),
              onChanged: (value) {
                setState(() {
                categoryId = categories.firstWhere((element){
                    return element.title==value;
                  }).id;
                  selectedCategoryName = value!;
                });
              },
            ),
            TextField(
          maxLines: 5,
              onChanged: (value){},
            ),
          ],
        ),
      ),
    );
  }
}
