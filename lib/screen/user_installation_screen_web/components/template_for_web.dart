import 'package:flutter/material.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/components/step_list.dart';
import 'package:test/screen/user_installation_screen_web/components/tablet_side.dart';

class TemplateForWeb extends StatelessWidget {
  final Widget child;
  final String backRouteName;
  final String nextRouteName;
  final int step;
  const TemplateForWeb({
    Key? key,
    required this.child,
    this.backRouteName = '/',
    this.nextRouteName = '/user-installation',
    this.step = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              flex: 1,
              child: TabletSide(),
            ),
            Expanded(
              flex: 6,
              child: Container(
                width: size.width,
                height: size.height,
                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                color: const Color.fromRGBO(250, 250, 250, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                      child: header(left: 0, top: 60),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      // margin: EdgeInsets.only(left: 32),
                      child: const Text('Steps'),
                    ),
                    SizedBox(
                      height: size.height * 0.045,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      // margin: EdgeInsets.only(left: 32),
                      child: StepList(step: step),
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    child,
                    SizedBox(
                      height: size.height * 0.13,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SecondStepButton(
                            checked: true,
                            text: 'BACK',
                            textColor: Color.fromRGBO(30, 80, 170, 1),
                            buttonBackgroundColor: Colors.white,
                            right: 0,
                            top: 0,
                            left: 0,
                            paddingHorizontal: 16,
                            routeName: backRouteName,
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
                            routeName: nextRouteName,
                            buttonBackgroundColor:
                                Color.fromRGBO(255, 125, 100, 1),
                            right: 0,
                            top: 0,
                            // left: size.width * 0.1,
                            paddingHorizontal: 16,
                            left: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
