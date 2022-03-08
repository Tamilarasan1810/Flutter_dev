import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatefulWidget {
  // const MealDetailScreen({ Key? key }) : super(key: key);
  static const routeName = '/meal-detail';
  final Function toggleFavourite;
  final Function isFavourite;
  MealDetailScreen(this.toggleFavourite, this.isFavourite);

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  Widget buildSectioniTitle(BuildContext context, title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  Widget buildContainer(Widget Child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white30,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: Child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectioniTitle(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: Theme.of(context).accentColor,
                  elevation: 5,
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(selectedMeal.ingredients[index])),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectioniTitle(context, 'Steps'),
            buildContainer(ListView.builder(
              itemBuilder: (context, index) => Column(children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text('# ${(index + 1)} '),
                  ),
                  title: Text(
                    selectedMeal.steps[index],
                  ),
                ),
                Divider(),
              ]),
              itemCount: selectedMeal.steps.length,
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          widget.isFavourite(mealId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => widget.toggleFavourite(mealId),
      ),
    );
  }
}
