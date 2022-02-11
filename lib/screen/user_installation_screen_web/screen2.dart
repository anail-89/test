import 'package:flutter/material.dart';
import 'package:test/components/background.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/components/step_list.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:step_progress_indicator/step_progress_indicator.dart';
//import 'package:intervalprogressbar/intervalprogressbar.dart';

import 'components/tablet_side.dart';
import 'components/template_for_web.dart';
//import 'package:intervalprogressbar/intervalprogressbar.dart';
//import 'package:flutter_crm_test/components/steps.dart';

class UserInstallationScreen2Web extends StatefulWidget {
  const UserInstallationScreen2Web({Key? key}) : super(key: key);

  @override
  State<UserInstallationScreen2Web> createState() =>
      _UserInstallationScreen2WebState();
}

class _UserInstallationScreen2WebState
    extends State<UserInstallationScreen2Web> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TemplateForWeb(
      child: SizedBox(
        width: size.width * 0.7,
        //height: 20,
        child: Column(
          children: [
            const SizedBox(height: 50, width: 0.7),
            StepProgressIndicator(
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
            const SizedBox(height: 25, width: 0.7),
            SizedBox(
              height: size.height * 0.08,
            ),
            SizedBox(
              height: 100,
              width: size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SecondStepButton(
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
                      left: size.width * 0.3,
                      routeName: '/',
                      width: 100,
                      height: 36
                      //left: size.width * 0.4 - 60,
                      //left: 100,
                      ),
                  // SizedBox(
                  //   width: 16,
                  // ),
                  const SecondStepButton(
                      checked: true,
                      text: 'NEXT',
                      textColor: Colors.white,
                      routeName: '/personal-information',
                      buttonBackgroundColor: Color.fromRGBO(255, 125, 100, 1),
                      right: 0,
                      top: 0,
                      // left: size.width * 0.1,
                      paddingHorizontal: 16,
                      left: 0,
                      width: 74,
                      height: 36),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
