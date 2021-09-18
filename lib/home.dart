import 'package:flutter/material.dart';

const Color clr = Color(0xFF1D1E33);

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Card(
                  color: clr,
                )),
                Expanded(child: Card(color: clr)),
              ],
            ),
          ),
          Expanded(
              child: Card(
            color: clr,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Card(
                  color: clr,
                )),
                Expanded(
                    child: Card(
                  color: clr,
                )),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFEB1555),
            height: 88.0,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  Card({Key? key, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
