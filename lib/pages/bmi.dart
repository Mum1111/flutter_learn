import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFFB1555);

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(
                          iconType: FontAwesomeIcons.mars,
                          textContent: 'MALE',
                        ))),
                Expanded(
                    child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(
                          iconType: FontAwesomeIcons.venus,
                          textContent: 'FEMALE',
                        )))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: Container(
                          child: Text('123'),
                        )))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: Container(
                          child: Text('123'),
                        ))),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: Container(
                    child: Text('123'),
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

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.iconType,
    required this.textContent,
  });

  final IconData iconType;
  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconType,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          textContent,
          style: const TextStyle(fontSize: 18.0, color: Color(0xff8d8e98)),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: cardChild);
  }
}
