import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals_app/providers/category_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/app_drawer.dart';
import '../widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {
   const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ovqatlar Menyusi"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Consumer<CategoryProvider>(
          builder: (context, provider, _) {
            return GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
               crossAxisSpacing: 15,
              ),
              children: provider.showCategories.map((category) => CategoryItem(category: category)).toList(),
            );
          }
        ),
      ),
    );
  }
}


