// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
//import 'package:test/components/header.dart';
//import 'package:test/components/second_step_button.dart';

import 'components/tablet_side.dart';
import 'components/web_body1.dart';

class UserInstallationScreen5Web extends StatefulWidget {
  const UserInstallationScreen5Web({Key? key}) : super(key: key);

  @override
  State<UserInstallationScreen5Web> createState() =>
      _UserInstallationScreen5WebState();
}

class _UserInstallationScreen5WebState
    extends State<UserInstallationScreen5Web> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: TabletSide(),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      width: size.width * 0.7,
                      height: size.height,
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      color: Color.fromRGBO(250, 250, 250, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            child: const header(left: 0, top: 60),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                            alignment: Alignment.center,
                            // margin: EdgeInsets.symmetric(
                            // vertical: 70, horizontal: 20),
                            // width: size.width * 0.5,

                            height: size.height * 0.24,

                            // top: size.height / 14,
                            child: Image.asset(
                              "assets/images/done.png",
                              // width: 160,
                              // height: 160,
                            ),
                          ),
                          SizedBox(
                            height: 55,
                          ),
                          Container(
                            alignment: Alignment.center,
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
                            alignment: Alignment.center,
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
                          //height: 100,
                          // child:
                          Expanded(
                            child: Container(
                              width: size.width,
                              height: size.height * 0.1,
                              margin: const EdgeInsets.only(bottom: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  SecondStepButton(
                                    top: 0,
                                    checked: true,
                                    text: 'GOT IT',
                                    textColor:
                                        const Color.fromRGBO(255, 255, 255, 1),
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
                          ),
                          //),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
