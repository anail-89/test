import 'package:flutter/material.dart';
import 'package:test/responsive.dart';
import 'package:test/screen/user_installation_screen_web/screen3.dart';
import 'package:test/screen/user_installation_screen_web/screen4.dart';

import 'user_installation_screen_desktop/screen4.dart';
import 'user_installation_screen_mobile/screen4.dart';

class UserInstallationScreen4 extends StatelessWidget {
  const UserInstallationScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MediaQuery.of(context).size.width < 700
          ? AppBar(
              toolbarHeight: 90,
              // title: Text('App Bar!'),
              flexibleSpace: const Image(
                image: AssetImage('assets/images/appbar.png'),
                fit: BoxFit.cover,
                //height: 120,
              ),
              backgroundColor: Colors.transparent,
            )
          : null,
      body: Responsive(
        mobile: UserInstalaltionScreen4Mobile(),
        tablet: UserInstalaltionScreen4Web(),
        desktop: UserInstallationScreen4Desktop(),
      ),
    );
  }
}
