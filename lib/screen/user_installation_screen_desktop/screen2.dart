import 'package:flutter/material.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktop_body1.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktop_body2.dart';
//import 'package:test/components/header.dart';
//import 'package:test/components/second_step_button.dart';

class UserInstallationScreen2Desktop extends StatefulWidget {
  const UserInstallationScreen2Desktop({Key? key}) : super(key: key);

  @override
  State<UserInstallationScreen2Desktop> createState() =>
      _UserInstallationScreen2DesktopState();
}

class _UserInstallationScreen2DesktopState
    extends State<UserInstallationScreen2Desktop> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: DesktopBody2(),
      ),
    );
  }
}
