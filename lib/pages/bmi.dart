import 'package:flutter/material.dart';
import 'package:flutter_learn/constant/constant.dart';
import 'package:flutter_learn/widget/icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/reusable_card.dart';

enum Gender { male, female }

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  Gender activeGender = Gender.male;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                            activeGender = Gender.male;
                          });
                        },
                        colour: activeGender == Gender.male
                            ? activeCardColour
                            : inactiveCardColour,
                        cardChild: const IconContent(
                          iconType: FontAwesomeIcons.mars,
                          textContent: 'MALE',
                        ))),
                Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                            activeGender = Gender.female;
                          });
                        },
                        colour: activeGender == Gender.female
                            ? activeCardColour
                            : inactiveCardColour,
                        cardChild: const IconContent(
                          iconType: FontAwesomeIcons.venus,
                          textContent: 'FEMALE',
                        )))
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: activeCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HEIGHT',
                  style: labelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(height.toString(), style: numberTextStyle),
                    const Text(
                      'cm',
                      style: labelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: const Color(0xff8d8e98),
                      activeTrackColor: Colors.white,
                      thumbColor: const Color(0xffeb1555),
                      overlayColor: const Color(0x29eb1555),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0)),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      }),
                ),
              ],
            ),
            onPress: () {},
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        onPress: () {},
                        colour: activeCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: labelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: numberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ],
                            )
                          ],
                        ))),
                Expanded(
                    child: ReusableCard(
                  onPress: () {},
                  colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'AGE',
                        style: labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Container(
            color: const Color(0xFFFB1555),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
