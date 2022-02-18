// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
//import 'package:test/components/header.dart';
//import 'package:test/components/second_step_button.dart';

class UserInstallationScreen5Mobile extends StatefulWidget {
  const UserInstallationScreen5Mobile({Key? key}) : super(key: key);

  @override
  State<UserInstallationScreen5Mobile> createState() =>
      _UserInstallationScreen5MobileState();
}

class _UserInstallationScreen5MobileState
    extends State<UserInstallationScreen5Mobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    // left: 32,
                    top: 42,
                  ),
                  height: 50,
                  width: size.width * 0.3,
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: size.width * 0.3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.6,
                  height: size.height * 0.3,
                  child: Image.asset(
                    "assets/images/done.png",
                    width: size.width * 0.6,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 32,
                  ),
                  child: const Text(
                    'Root user installation',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromRGBO(10, 25, 49, 1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                left: 32,
              ),
              height: 40,
              // width: size.width * 0.5,
              //alignment: Alignment.topLeft,
              //margin: const EdgeInsets.fromLTRB(32, 25, 16, 0),
              child: const SizedBox(
                //width: size.width * 0.8,
                child: Text(
                  'Congratulations',
                  style: TextStyle(
                    color: Color.fromRGBO(30, 80, 170, 1),
                    fontSize: 16,
                    height: 2.8,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                left: 32,
              ),
              height: 30,
              // width: size.width * 0.5,
              //alignment: Alignment.topLeft,
              //margin: const EdgeInsets.fromLTRB(32, 25, 16, 0),
              child: const SizedBox(
                //width: size.width * 0.8,
                child: Text(
                  'You have been successfully setup a root user for your PM tool.',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 25, 49, 1),
                    fontSize: 12,
                    height: 2,
                  ),
                ),
              ),
            ),
            //  Row(
            // height: 100,
            // width: size.width,
            // height: 100,
            // child:
            // Expanded(
            Container(
              width: size.width,
              // height: size.height * 0.1,
              margin: const EdgeInsets.only(top: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  SecondStepButton(
                    top: 0,
                    checked: true,
                    text: 'GOT IT',
                    textColor: const Color.fromRGBO(255, 255, 255, 1),
                    routeName: '/',
                    width: 74,
                    height: 36,
                    buttonBackgroundColor:
                        const Color.fromRGBO(255, 125, 100, 1),
                    paddingHorizontal: 15,
                    textFontSize: 12,
                  ),
                ],
              ),
            ),
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}
