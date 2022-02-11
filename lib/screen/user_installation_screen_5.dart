import 'package:flutter/material.dart';
import 'package:test/responsive.dart';
import 'package:test/screen/user_installation_screen_web/screen5.dart';

class UserInstallationScreen5 extends StatelessWidget {
  const UserInstallationScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Responsive(
        mobile: UserInstallationScreen5Web(),
        tablet: UserInstallationScreen5Web(),
        desktop: UserInstallationScreen5Web(),
      ),
    );
  }
}
