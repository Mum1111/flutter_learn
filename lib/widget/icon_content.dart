import 'package:flutter/material.dart';
import 'package:flutter_learn/constant/constant.dart';

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
          style: labelTextStyle,
        )
      ],
    );
  }
}
