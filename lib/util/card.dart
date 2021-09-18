import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  const CardContainer({Key? key, required this.color, required this.cardChild})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
