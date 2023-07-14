import 'package:flutter/material.dart';
import 'package:recipes/card_container.dart';
import 'package:recipes/recipe.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Recipe.samples.length,
        itemBuilder: (context, index) {
          final recipe = Recipe.samples[index];
          return Center(
            child: CardContainer(recipe: recipe),
          );
        },
      ),
    );
  }
}