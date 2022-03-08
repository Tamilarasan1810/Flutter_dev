import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';
import '../models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  // const CategoriesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return //Scaffold(
        // appBar: AppBar(
        //   title: Center(child: const Text("Daily Meals")),
        // ),
        // body:
        GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map(
            (catdata) => CategoryItem(catdata.id, catdata.title, catdata.color),
          )
          .toList(),
    );
    // );
  }
}
