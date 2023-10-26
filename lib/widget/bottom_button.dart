import 'package:flutter/material.dart';

import '../constant/constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.buttonText, required this.onTap});

  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: const Color(0xFFFB1555),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Center(
              child: Text(
            buttonText,
            style: buttonTextStyle,
          )),
        ),
      ),
    );
  }
}
