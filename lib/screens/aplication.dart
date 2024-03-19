import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_screen.dart';
import 'package:meals_app/screens/favorites_screen.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor:const Color(0xff0659d9),
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Asosiy"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Sevimlilar"),
        ],
      ),
    );
  }

  List<Widget> screens = [
    const CategoryScreen(),
    const FavoriteScreen(),
  ];
}
