import 'package:flutter/material.dart';
//import 'package:test/components/header.dart';
//import 'package:test/components/second_step_button.dart';

import 'components/web_body1.dart';

class UserInstallationScreen1Web extends StatefulWidget {
  const UserInstallationScreen1Web({Key? key}) : super(key: key);

  @override
  State<UserInstallationScreen1Web> createState() =>
      _UserInstallationScreen1WebState();
}

class _UserInstallationScreen1WebState
    extends State<UserInstallationScreen1Web> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: WebBody1(),
      ),
    );
  }
}
