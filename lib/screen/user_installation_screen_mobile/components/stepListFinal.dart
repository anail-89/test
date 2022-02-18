import 'package:flutter/material.dart';
import 'package:test/components/dash_line_widget.dart';
import 'package:test/components/stepCard.dart';

class StepListFinal extends StatelessWidget {
  final int step;
  final double height;
  StepListFinal({
    Key? key,
    this.step = 2,
    this.height = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StepCard(
          text: 'Open .dmg file',
          icon: Icons.radio_button_checked,
          textColor: Color.fromRGBO(30, 80, 170, 1),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10,
          ),
          child: DashLine(height: height),
        ),
        StepCard(
          text: 'Installation',
          icon: step == 2
              ? Icons.radio_button_unchecked
              : Icons.radio_button_checked,
          textColor: Color.fromRGBO(30, 80, 170, 1),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10,
          ),
          child: DashLine(height: height),
        ),
        StepCard(
          text: 'Personal Information',
          icon: step <= 3
              ? Icons.radio_button_unchecked
              : Icons.radio_button_checked,
          textColor: step >= 3 ? Color.fromRGBO(30, 80, 170, 1) : Colors.grey,
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10,
          ),
          child: DashLine(height: height),
        ),
        StepCard(
          text: 'Password Setup',
          icon: step <= 4
              ? Icons.radio_button_unchecked
              : Icons.radio_button_checked,
          textColor: step == 4 ? Color.fromRGBO(30, 80, 170, 1) : Colors.grey,
        ),
      ],
    );
  }
}
