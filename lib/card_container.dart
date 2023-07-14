import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  CardContainer({
    super.key,
    required this.cardChild,
    required this.onPress
  });

  Widget cardChild;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        height: 200,
        width: 170,
      ),
      onTap: onPress,
    );
  }
}