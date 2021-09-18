import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              children: const [
                Expanded(
                  child: Card(
                    color: clr,
                    cardChild: cardchildWidget(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                    child: Card(
                        color: clr,
                        cardChild: cardchildWidget(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ))),
              ],
            ),
          ),
          const Expanded(
              child: Card(
            color: clr,
            cardChild: cardchildWidget(
              icon: FontAwesomeIcons.mars,
              label: "MALE",
            ),
          )),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                    child: Card(
                  color: clr,
                  cardChild: cardchildWidget(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                )),
                Expanded(
                    child: Card(
                        color: clr,
                        cardChild: cardchildWidget(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ))),
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

class cardchildWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  const cardchildWidget({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Color(
              0xFF8D8E98,
            ),
          ),
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  const Card({Key? key, required this.color, required this.cardChild})
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
