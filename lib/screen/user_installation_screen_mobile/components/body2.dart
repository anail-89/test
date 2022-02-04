import 'package:flutter/material.dart';
import 'package:test/components/background.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/components/step_list.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';
//import 'package:intervalprogressbar/intervalprogressbar.dart';
//import 'package:flutter_crm_test/components/steps.dart';

class Body2 extends StatefulWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      // child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.13,
          ),
          const header(),
          SizedBox(
            height: size.height * 0.04,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 32),
            child: Text('Steps'),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 32),
            child: StepList(),
          ),

          // SizedBox(
          //   height: 32,
          // ),
          // SizedBox(
          //   width: size.width * 0.8,
          //   height: 80,
          //   child: StepProgressIndicator(
          //     totalSteps: 20,
          //     currentStep: 6,
          //     selectedColor: Colors.orange,
          //     unselectedColor: Colors.black,
          //     roundedEdges: Radius.elliptical(20, 30),
          //     padding: 5,
          //     fallbackLength: 200.0,
          //     size: 20,
          //   ),
          // ),
          SizedBox(
            width: size.width * 0.8,
            height: 20,
            child: const IntervalProgressBar(
                direction: IntervalProgressDirection.horizontal,
                max: 20,
                progress: 10,
                intervalSize: 10,
                size: Size(10, 10),
                highlightColor: Color.fromRGBO(255, 125, 100, 1),
                defaultColor: Colors.white,
                intervalColor: Colors.white,
                intervalHighlightColor: Colors.white,
                reverse: false,
                // intervalDegrees: 150,
                // strokeWith: 50.0,
                radius: 20),
          ),
          Container(
            // width: size.width * 0.75,
            // height: size.height * 0.6,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SecondStepButton(
                    checked: true,
                    text: 'BACK',
                    textColor: Color.fromRGBO(30, 80, 170, 1),
                    routeName: '/user-installation',
                    buttonBackgroundColor: Colors.white,
                    right: 0,
                    top: 0,
                  ),
                  SecondStepButton(
                    checked: true,
                    text: 'CANCEL',
                    textColor: Color.fromRGBO(30, 80, 170, 1),
                    routeName: '/user-installation',
                    buttonBackgroundColor: Colors.white,
                    right: 0,
                    top: 0,
                    paddingHorizontal: 5,
                  ),
                  SecondStepButton(
                    checked: false,
                    text: 'NEXT',
                    textColor: Colors.white,
                    routeName: '/user-installation',
                    buttonBackgroundColor: Color.fromRGBO(255, 125, 100, 1),
                    right: 0,
                    top: 0,
                  ),
                ],
              ),
            ),
          ),
          //Steps(stepCount: 1, secondRoute: '/step3'),
        ],
      ),
      // ),
    );
  }
}
