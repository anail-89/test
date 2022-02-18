import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Indicator extends StatelessWidget {
  final double left;
  const Indicator({
    Key? key,
    this.left = 32,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: left,
      ),
      height: 30,
      width: size.width * 0.8,
      child: StepProgressIndicator(
        totalSteps: 20,
        currentStep: 10,
        size: 13,
        selectedColor: const Color.fromRGBO(255, 125, 100, 1),
        unselectedColor: Colors.white,
        customColor: (index) {
          if (index % 2 == 0) {
            return const Color.fromRGBO(255, 125, 100, 1);
          } else {
            return const Color.fromRGBO(254, 156, 138, 1);
          }
        },
        padding: 0,
      ),
    );
  }
}
