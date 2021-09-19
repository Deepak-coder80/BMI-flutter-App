import 'package:bmi_calculator/constants/constants.dart';

import 'package:bmi_calculator/util/card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  const ResultPage({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  }) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    "Your Result",
                    style: kTitleTextStyle,
                  )),
            ),
            Expanded(
              flex: 5,
              child: CardContainer(
                color: activeclr,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultText == "Normal"
                          ? kResultTextStyle
                          : kResultTextStyle2,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: const Center(
                  child: Text(
                    "RE-CALCULATE",
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
        ));
  }
}
