import 'package:flutter/material.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktop_body1.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktop_body2.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktop_body3.dart';
//import 'package:test/components/header.dart';
//import 'package:test/components/second_step_button.dart';

class UserInstallationScreen3Desktop extends StatefulWidget {
  const UserInstallationScreen3Desktop({Key? key}) : super(key: key);

  @override
  State<UserInstallationScreen3Desktop> createState() =>
      _UserInstallationScreen3DesktopState();
}

class _UserInstallationScreen3DesktopState
    extends State<UserInstallationScreen3Desktop> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: DesktopBody3(),
      ),
    );
  }
}
