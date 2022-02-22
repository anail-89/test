import 'package:flutter/material.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktop_body4.dart';

class UserInstallationScreen4Desktop extends StatefulWidget {
  const UserInstallationScreen4Desktop({Key? key}) : super(key: key);

  @override
  State<UserInstallationScreen4Desktop> createState() =>
      _UserInstallationScreen4DesktopState();
}

class _UserInstallationScreen4DesktopState
    extends State<UserInstallationScreen4Desktop> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: DesktopBody4(),
      ),
    );
  }
}
