import 'package:flutter/material.dart';
import 'package:flutter_learn/constant/constant.dart';
import 'package:flutter_learn/widget/bottom_button.dart';
import 'package:flutter_learn/widget/reusable_card.dart';

class BmiDetail extends StatelessWidget {
  const BmiDetail(
      {super.key,
      required this.bmi,
      required this.bmiResult,
      required this.bmiResultIntro});

  final String bmi;
  final String bmiResult;
  final String bmiResultIntro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmiResult,
                        style: resultTextStyle,
                      ),
                      Text(
                        bmi,
                        style: scoreTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          bmiResultIntro,
                          textAlign: TextAlign.center,
                          style: introTextStyle,
                        ),
                      )
                    ],
                  ),
                  onPress: () {})),
          BottomButton(
              buttonText: 'GO BACK',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
