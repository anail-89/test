import 'package:flutter/material.dart';
import 'package:test/responsive.dart';
import 'package:test/screen/user_installation_screen_web/screen3.dart';

class UserInstallationScreen3 extends StatelessWidget {
  const UserInstallationScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Responsive(
        mobile: UserInstalaltionScreen3Web(),
        tablet: UserInstalaltionScreen3Web(),
        desktop: UserInstalaltionScreen3Web(),
      ),
    );
  }
}
