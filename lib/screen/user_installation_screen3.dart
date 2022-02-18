import 'package:flutter/material.dart';
import 'package:test/responsive.dart';
import 'package:test/screen/user_installation_screen_desktop/screen3.dart';
import 'package:test/screen/user_installation_screen_mobile/screen3.dart';
import 'package:test/screen/user_installation_screen_web/screen3.dart';

class UserInstallationScreen3 extends StatelessWidget {
  const UserInstallationScreen3({Key? key}) : super(key: key);

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
        mobile: UserInstalaltionScreen3Mobile(),
        tablet: UserInstalaltionScreen3Web(),
        desktop: UserInstallationScreen3Desktop(),
      ),
    );
  }
}
