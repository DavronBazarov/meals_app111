import 'package:flutter/material.dart';
import 'package:meals_app/screens/aplication.dart';

import '../screens/products_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
          centerTitle: true,
        ),
        body:  Column(
          children: [
            ListTile(
              title: Text("Bosh sahifa"),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context){
                  return const Application();
                }));
              },
            ),
            const Divider(height:0, thickness: 0.2 ),
            ListTile(
              title: const Text("Mahsulotlar"),
              leading: const Icon(Icons.category),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ProductsScreen()));
              },
            ),
          ],

        ),
      ),
    );
  }
}
