import 'package:flutter/material.dart';
import 'package:test/components/header.dart';
import 'package:test/components/step_list.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktopSide.dart';
import 'package:test/screen/user_installation_screen_mobile/components/stepListFinal.dart';

class TemplateForDesktop extends StatelessWidget {
  const TemplateForDesktop({
    Key? key,
    required this.child,
    this.step = 2,
  }) : super(key: key);

  final Widget child;
  final int step;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(flex: 2, child: DesktopSide()),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          // left: 32,
                          top: 42,
                        ),
                        height: 50,
                        width: size.width * 0.1,
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: size.width * 0.1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width * 0.1),
                      Container(
                        width: size.width * 0.1,
                        height: size.height * 0.3,
                        child: Image.asset(
                          "assets/images/plant1.png",
                          width: size.width * 0.1,
                        ),
                      ),
                      // SizedBox(width: size.width * 0.1),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.15, right: size.width * 0.1),
                width: size.width * 0.3,
                height: size.height * 0.8,
                //width: size.width * 0.7,

                padding: EdgeInsets.fromLTRB(100, 80, 100, 0),
                color: Color.fromRGBO(250, 250, 250, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const header(left: 0, top: 0),
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
                      child: StepListFinal(step: step, height: 22),
                    ),
                    child,
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
