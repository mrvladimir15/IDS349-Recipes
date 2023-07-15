import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int noServings = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.recipe.imageUrl),
            SizedBox(height: 16.0),
            Text(
              'Ingredients for $noServings serving(s):',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
                height: 8.0
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (context, index) {
                final ingredients = widget.recipe.ingredients[index];
                return ListTile(
                  title: Text(
                    '${ingredients.quantity * noServings} ${ingredients.measure} ${ingredients.name}',
                  ),
                );
              },
            ),
            SizedBox(height: 16.0),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 10,
                ),
                overlayShape:
                RoundSliderOverlayShape(overlayRadius: 25),
                overlayColor: Colors.lightGreenAccent,
                thumbColor: Colors.green,
                activeTrackColor: Colors.black,
                inactiveTrackColor: Colors.grey,
              ),
              child: Slider(
                value: noServings.toDouble(),
                min: 1,
                max: 30,
                onChanged: (value) {
                  setState(() {
                    noServings = value.toInt();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
