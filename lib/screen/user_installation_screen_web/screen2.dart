import 'package:flutter/material.dart';
import 'package:test/components/background.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/components/step_list.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';

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
      nextRouteName: '/personal-information',
    );
  }
}
