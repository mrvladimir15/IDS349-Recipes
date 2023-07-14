import 'package:flutter/material.dart';
import 'package:recipes/card_container.dart';
import 'package:recipes/card_content.dart';
import 'package:recipes/recipe.dart';
import 'package:recipes/recipe_detail.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
            ],
          ),
          GestureDetector(
            child: CardContainer(
              cardChild: Column(
                children: [
                  Image.asset('images/2126711929_ef763de2b3_w.jpg'),
                  SizedBox(height: 10),
                  Text(
                    'Receta',
                    style: TextStyle(
                        fontSize: 16,
                    ),
                  ),
                ],
              ),
              onPress: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeDetail()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}