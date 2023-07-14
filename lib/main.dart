import 'package:flutter/material.dart';
import 'package:recipes/recipes_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Recipe Calculator'),
        ),
        body: RecipesScreen()
      ),
    );
  }
}
