import 'package:flutter/material.dart';
import 'package:test/responsive.dart';
import 'package:test/screen/user_installation_screen_mobile/screen5.dart';
import 'package:test/screen/user_installation_screen_web/screen5.dart';

class UserInstallationScreen5 extends StatelessWidget {
  const UserInstallationScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MediaQuery.of(context).size.width < 700
          ? AppBar(
              //toolbarHeight: 90,
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
        mobile: UserInstallationScreen5Mobile(),
        tablet: UserInstallationScreen5Web(),
        desktop: UserInstallationScreen5Web(),
      ),
    );
  }
}
