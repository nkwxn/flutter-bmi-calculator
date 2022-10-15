import 'package:flutter/material.dart';
import 'package:bmi_calc/components/round_icon_button.dart';
import 'package:bmi_calc/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NumberStepper extends StatefulWidget {
  NumberStepper({
    super.key,
    required this.title,
    required this.value,
    required this.onButtonPress,
  });

  final String title;
  int value;
  final Function(int) onButtonPress;

  @override
  State<NumberStepper> createState() => _NumberStepperState();
}

class _NumberStepperState extends State<NumberStepper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.title,
          style: kLabelTextStyle,
        ),
        Text(
          widget.value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  widget.value--;
                  widget.onButtonPress(widget.value);
                });
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  widget.value++;
                  widget.onButtonPress(widget.value);
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
