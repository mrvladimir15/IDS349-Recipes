import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';
import 'package:recipes/recipe_detail.dart';

class CardContainer extends StatelessWidget {
  final Recipe recipe;

  const CardContainer({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: SizedBox(
          child: Column(
            children: [
              Image.asset(
                recipe.imageUrl,
                fit: BoxFit.cover,
                height: 300,
                width: 450,
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                  recipe.label,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 13,
              )
            ],
          ),
        ),
      ),

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RecipeDetail(recipe : recipe)),
        );
      },
    );
  }
}
