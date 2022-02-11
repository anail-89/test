import 'package:flutter/material.dart';
import 'package:test/responsive.dart';
import 'package:test/screen/user_installation_screen_web/screen3.dart';
import 'package:test/screen/user_installation_screen_web/screen4.dart';

class UserInstallationScreen4 extends StatelessWidget {
  const UserInstallationScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Responsive(
        mobile: UserInstalaltionScreen4Web(),
        tablet: UserInstalaltionScreen4Web(),
        desktop: UserInstalaltionScreen4Web(),
      ),
    );
  }
}
