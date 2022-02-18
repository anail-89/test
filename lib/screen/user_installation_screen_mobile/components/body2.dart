import 'package:flutter/material.dart';

import 'package:test/components/header.dart';
import 'package:test/components/screen2_indicator.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/components/step_list.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:test/screen/user_installation_screen_mobile/components/template_for_mobile.dart';
import 'package:test/screen/user_installation_screen_mobile/testForMobileScreen.dart';

import '../../../components/background.dart';

class Body2 extends StatefulWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TestForMobile(
      step: 2,
      child: Column(
        children: [
          SizedBox(
            height: 30,
            width: size.width * 0.8,
            child: const Indicator(left: 32),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: size.width * 0.8,
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SecondStepButton(
                    checked: true,
                    text: 'BACK',
                    textColor: Color.fromRGBO(30, 80, 170, 1),
                    buttonBackgroundColor: Colors.white,
                    right: 0,
                    top: 0,
                    left: 0,
                    paddingHorizontal: 16,
                    routeName: '/',
                    width: 74,
                    height: 45,
                  ),
                  SecondStepButton(
                      checked: true,
                      text: 'CANCEL',
                      textColor: Color.fromRGBO(30, 80, 170, 1),
                      buttonBackgroundColor: Colors.white,
                      right: 0,
                      top: 0,
                      paddingHorizontal: 16,
                      left: 0,
                      routeName: '/',
                      width: 100,
                      height: 45),
                  SecondStepButton(
                      checked: true,
                      text: 'NEXT',
                      textColor: Colors.white,
                      routeName: '/personal-information',
                      buttonBackgroundColor: Color.fromRGBO(255, 125, 100, 1),
                      right: 0,
                      top: 0,
                      paddingHorizontal: 16,
                      left: 0,
                      width: 74,
                      height: 45),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
