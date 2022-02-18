import 'package:flutter/material.dart';
import 'package:test/components/dash_line_widget.dart';
import 'package:test/components/percent_indicator_demo.dart';
import 'package:test/components/stepCard.dart';

import 'package:test/models/step_model.dart';
//import 'package:percent_indicator/percent_indicator.dart';

class StepList extends StatelessWidget {
  final int step;
  const StepList({Key? key, this.step = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.25,
      width: double.infinity,
      // alignment: Alignment.topLeft,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: StepCard(
              text: 'Open .dmg file',
              icon: Icons.radio_button_checked,
              textColor: Color.fromRGBO(30, 80, 170, 1),
            ),
          ),
          const Positioned(
            height: 35,
            width: 3,
            child: DashLine(),
            left: 10,
            top: 10,
          ),
          Positioned(
            top: 45,
            child: StepCard(
              text: 'Installation',
              icon: step == 2
                  ? Icons.radio_button_unchecked
                  : Icons.radio_button_checked,
              textColor: Color.fromRGBO(30, 80, 170, 1),
            ),
          ),
          const Positioned(
            height: 40,
            width: 3,
            child: DashLine(),
            left: 10,
            top: 62,
          ),
          Positioned(
            top: 95,
            child: StepCard(
              text: 'Personal Information',
              icon: step <= 3
                  ? Icons.radio_button_unchecked
                  : Icons.radio_button_checked,
              textColor:
                  step >= 3 ? Color.fromRGBO(30, 80, 170, 1) : Colors.grey,
            ),
          ),
          const Positioned(
            height: 35,
            width: 3,
            child: DashLine(),
            left: 10,
            top: 115,
          ),
          Positioned(
            top: 150,
            child: StepCard(
              text: 'Password Setup',
              icon: step <= 4
                  ? Icons.radio_button_unchecked
                  : Icons.radio_button_checked,
              textColor:
                  step == 4 ? Color.fromRGBO(30, 80, 170, 1) : Colors.grey,
            ),
          ),
          // Positioned(
          //   top: 180,
          //   child: PercentIndicatorDemo(),
          // ),
        ],
      ),
    );
  }
}
