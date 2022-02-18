import 'package:flutter/material.dart';
import 'package:test/components/screen2_indicator.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/screen/user_installation_screen_mobile/components/stepListFinal.dart';

class TestForMobile extends StatefulWidget {
  final Widget child;
  final int step;
  const TestForMobile({Key? key, required this.child, this.step = 2})
      : super(key: key);

  @override
  State<TestForMobile> createState() => _TestForMobileState();
}

class _TestForMobileState extends State<TestForMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  // left: 32,
                  top: 42,
                ),
                height: 50,
                width: size.width * 0.3,
                child: Image.asset(
                  "assets/images/logo.png",
                  width: size.width * 0.3,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.7,
                height: size.height * 0.4,
                child: Image.asset(
                  "assets/images/plant1.png",
                  width: size.width * 0.7,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 32,
                ),
                child: const Text(
                  'Root user installation',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color.fromRGBO(10, 25, 49, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Container(
                height: 15,
                width: size.width * 0.9,
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 32),
                child: const Text('Steps'),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 28, top: 16),
            child: StepListFinal(step: widget.step),
          ),
          const SizedBox(
            height: 16,
          ),
          widget.child,
        ],
      ),
    );
  }
}
