import 'package:flutter/material.dart';
import 'package:test/screen/user_installation_screen_mobile/components/body2.dart';
import 'package:test/screen/user_installation_screen_web/screen2.dart';

import '../../responsive.dart';

class UserInstallationScreen2 extends StatelessWidget {
  const UserInstallationScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Responsive(
        mobile: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            toolbarHeight: 65,
            // title: Text('App Bar!'),
            flexibleSpace: const Image(
              image: AssetImage('assets/images/appbar.png'),
              fit: BoxFit.cover,
              //height: 120,
            ),
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(child: Body2()),
        ),
        tablet: UserInstallationScreen2Web(),
        desktop: UserInstallationScreen2Web(),
      ),
    );
  }
}
