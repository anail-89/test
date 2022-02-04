// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/responsive.dart';
import 'package:test/screen/user_installation_screen3.dart';
import 'package:test/screen/user_installation_screen_mobile/user_installation_screen1.dart';
import 'package:test/screen/user_installation_screen_mobile/user_installation_screen2.dart';

import 'package:test/screen/user_installation_screen_web/screen1.dart';
import 'constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CRM Root Registration',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                // color: Colors.blue,
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontSize: 24,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Responsive(
          mobile: UserInstallationScreenMobile1(),
          tablet: UserInstallationScreen1Web(),
          desktop: UserInstallationScreen1Web(),
        ),
        //  LayoutBuilder(
        //   builder: (context, constraints) {
        //     if (constraints.maxWidth < 500) {
        //       return UserInstallationScreenMobile1();
        //     } else {
        //       return UserInstallationScreen1Web();
        //     }
        //   },
        // ),
      ),
      routes: {
        '/user-installation': (ctx) => UserInstallationScreen2(),
        '/personal-information': (ctx) => UserInstallationScreen3(),
      },
    );
  }
}
