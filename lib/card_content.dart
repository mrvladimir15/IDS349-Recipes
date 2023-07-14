import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({super.key, required this.image, required this.text});
  ImageProvider image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
          ),
        )
      ],
    );
  }
}