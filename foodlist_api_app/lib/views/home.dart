import 'package:flutter/material.dart';
import '../models/recipe.api.dart';
import '../models/recipe.dart';
import './widgets/recipe_cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Recipe> _recipes;
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
    //print(_recipes);
  }

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 185, 142),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 20),
              Text("Food Recipie"),
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator.adaptive())
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                    title: _recipes[index].name,
                    cookTime: _recipes[index].totalTime,
                    rating: _recipes[index].rating.toString(),
                    thumbnailUrl: _recipes[index].images,
                    i: i++,
                  );
                }));
  }
}


// i use Rapid Api ===> Yummly
//  https://rapidapi.com/apidojo/api/yummly2/
//  https://www.youtube.com/watch?v=FlGTSb7_9jk&list=WL&index=3
// https://oflutter.com/simple-recipe-list-app-using-flutter-and-api/