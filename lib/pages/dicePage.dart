import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightButtonNumber = 1;
  int leftButtonNumber = 1;

  void randomButtonNumber() {
    setState(() {
      leftButtonNumber = Random().nextInt(6) + 1;
      rightButtonNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    randomButtonNumber();
                  },
                  child: Image.asset('images/dice$leftButtonNumber.png'),
                ),
              ),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        randomButtonNumber();
                      },
                      child: Image.asset('images/dice$rightButtonNumber.png')))
            ],
          ),
        ),
      ),
    );
  }
}
