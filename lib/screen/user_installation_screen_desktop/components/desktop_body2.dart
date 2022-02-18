import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:test/components/first_screen_text.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktopSide.dart';
import 'package:test/screen/user_installation_screen_desktop/components/template_for_desktop.dart';
import 'package:test/screen/user_installation_screen_web/components/tablet_side.dart';

class DesktopBody2 extends StatefulWidget {
  const DesktopBody2({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopBody2> createState() => _DesktopBody2State();
}

class _DesktopBody2State extends State<DesktopBody2> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TemplateForDesktop(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          SizedBox(
            // height: 70,
            width: size.width * 0.3,
            child: StepProgressIndicator(
              totalSteps: 20,
              currentStep: 10,
              size: 13,
              selectedColor: const Color.fromRGBO(255, 125, 100, 1),
              unselectedColor: Colors.white,
              // customStep: (index, color, size) {
              //   return Container(color: color, child: Text('$index $size'));
              // },
              customColor: (index) {
                if (index % 2 == 0) {
                  return const Color.fromRGBO(255, 125, 100, 1);
                } else {
                  return const Color.fromRGBO(254, 156, 138, 1);
                }
              },
              //height: 36.0,
              padding: 0,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: size.width * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
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
                  height: 36,
                ),
                SecondStepButton(
                    checked: true,
                    text: 'CANCEL',
                    textColor: Color.fromRGBO(30, 80, 170, 1),
                    //routeName: '/user-installation',
                    buttonBackgroundColor: Colors.white,
                    right: 0,
                    top: 0,
                    paddingHorizontal: 16,
                    left: 70,
                    routeName: '/',
                    width: 100,
                    height: 36
                    //left: size.width * 0.4 - 60,
                    //left: 100,
                    ),
                // SizedBox(
                //   width: 16,
                // ),
                SecondStepButton(
                    checked: true,
                    text: 'NEXT',
                    textColor: Colors.white,
                    routeName: '/personal-information',
                    buttonBackgroundColor: Color.fromRGBO(255, 125, 100, 1),
                    right: 0,
                    top: 0,
                    // left: size.width * 0.1,
                    paddingHorizontal: 16,
                    left: 20,
                    width: 74,
                    height: 36),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
