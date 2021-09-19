import 'package:bmi_calculator/calculate.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/screens/resultpage.dart';
import 'package:bmi_calculator/util/card.dart';
import 'package:bmi_calculator/util/icon_content.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({
    Key? key,
  }) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  Gender selectedGender = Gender.female;
  int height = 180;
  int weight = 60;
  int age = 19;
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
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: CardContainer(
                      color: selectedGender == Gender.male
                          ? activeclr
                          : inactiveclr,
                      cardChild: const cardchildWidget(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: CardContainer(
                      color: selectedGender == Gender.female
                          ? activeclr
                          : inactiveclr,
                      cardChild: const cardchildWidget(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      )),
                )),
              ],
            ),
          ),
          Expanded(
              child: CardContainer(
            color: clr,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("HEIGHT",
                    textAlign: TextAlign.center, style: kHeadingTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: kNumberTextStyle),
                    const Text(" cm", style: kHeadingTextStyle),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 15.0,
                    ),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                    min: 120.0,
                    max: 220.0,
                    activeColor: const Color(0xFFEB1555),
                    inactiveColor: const Color(0xFF8D8E98),
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CardContainer(
                  color: clr,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "WEIGHT",
                        style: kHeadingTextStyle,
                      ),
                      Text(weight.toString(), style: kNumberTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            elevation: 6.0,
                            constraints: const BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: const CircleBorder(),
                            fillColor: const Color(0xFF4C4F5E),
                            child: const Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            elevation: 6.0,
                            constraints: const BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: const CircleBorder(),
                            fillColor: const Color(0xFF4C4F5E),
                            child: const Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                  child: CardContainer(
                    color: clr,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: kHeadingTextStyle,
                        ),
                        Text(age.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              elevation: 6.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xFF4C4F5E),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              elevation: 6.0,
                              constraints: const BoxConstraints.tightFor(
                                width: 56.0,
                                height: 56.0,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xFF4C4F5E),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              BMICalculate calc = BMICalculate(height, weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiResult: calc.calculateBMI(),
                            resultText: calc.getResult(),
                            interpretation: calc.getInstruction(),
                          )));
            },
            child: Container(
              child: const Center(
                child: Text(
                  "CALCULATE",
                  style: kbottomTextStyle,
                ),
              ),
              color: const Color(0xFFEB1555),
              height: 88.0,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(bottom: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
