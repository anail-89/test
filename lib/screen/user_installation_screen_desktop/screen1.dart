import 'package:flutter/material.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktop_body1.dart';
//import 'package:test/components/header.dart';
//import 'package:test/components/second_step_button.dart';

class UserInstallationScreen1Desktop extends StatefulWidget {
  const UserInstallationScreen1Desktop({Key? key}) : super(key: key);

  @override
  State<UserInstallationScreen1Desktop> createState() =>
      _UserInstallationScreen1DesktopState();
}

class _UserInstallationScreen1DesktopState
    extends State<UserInstallationScreen1Desktop> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: DesktopBody1(),
      ),
    );
  }
}
