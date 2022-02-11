import 'package:flutter/material.dart';
//import 'package:intervalprogressbar/intervalprogressbar.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/components/step_list.dart';
import 'package:test/screen/user_installation_screen_web/components/tablet_side.dart';

class TemplateForWeb extends StatelessWidget {
  final Widget child;
  final int step;
  const TemplateForWeb({
    Key? key,
    required this.child,
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
                    // SizedBox(
                    //   height: size.height * 0.08,
                    // ),
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
