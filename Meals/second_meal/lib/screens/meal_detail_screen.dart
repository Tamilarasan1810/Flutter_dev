//import 'dart:html';

import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  // const MealDetailScreen({ Key? key }) : super(key: key);
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: 500,
                  color: Colors.amber,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 2,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage('${selectedMeal.imageUrl}'),
                          // child: Image.network(
                          //   selectedMeal.imageUrl,
                          //   fit: BoxFit.fill,
                          // ),
                          maxRadius: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                // Expanded(flex: 1, child: Column()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
