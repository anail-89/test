import 'package:flutter/material.dart';
import 'package:test/components/header.dart';
import 'package:test/components/step_list.dart';

class TemplateForMobile extends StatelessWidget {
  final Widget child;
  final int step;
  const TemplateForMobile({
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
        SizedBox(
          height: size.height * 0.2,
        ),

        //flex: 3,
        // height: 200,
        header(
          top: 175,
        ),

        SizedBox(
          height: size.height * 0.04,
        ),
        Expanded(
          child: Container(
            height: 15,
            width: size.width * 0.9,
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 32),
            child: const Text('Steps'),
          ),
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        Expanded(
          //width: size.width * 0.9,
          // height: size.height * 0.25,
          child: Container(
            // height: size.height * 0.7,
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 32),
            child: StepList(step: step),
          ),
        ),
        child,
      ],
    );
  }
}
