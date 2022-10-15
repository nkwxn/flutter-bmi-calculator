import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String titleText;

  const IconContent({
    required this.iconData,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          titleText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
