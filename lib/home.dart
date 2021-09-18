import 'package:bmi_calculator/util/card.dart';
import 'package:bmi_calculator/util/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color clr = Color(0xFF1D1E33);
const Color activeclr = Color(0xFF1D1E33);
const Color inactiveclr = Color(0xFF111328);

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  Color malecardColor = inactiveclr;
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
                  child: GestureDetector(
                    onTap: () {
                      //print("Male pressed");
                    },
                    child: const CardContainer(
                      color: inactiveclr,
                      cardChild: cardchildWidget(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                const Expanded(
                    child: CardContainer(
                        color: clr,
                        cardChild: cardchildWidget(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ))),
              ],
            ),
          ),
          const Expanded(
              child: CardContainer(
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
                    child: CardContainer(
                  color: clr,
                  cardChild: cardchildWidget(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                )),
                Expanded(
                    child: CardContainer(
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
