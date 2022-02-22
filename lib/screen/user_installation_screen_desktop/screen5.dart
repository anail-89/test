import 'package:flutter/material.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktopSide.dart';
import 'package:test/screen/user_installation_screen_mobile/components/stepListFinal.dart';

class UserInstallationScreen5Desktop extends StatelessWidget {
  const UserInstallationScreen5Desktop({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 2, child: DesktopSide()),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              // left: 32,
                              top: 42,
                            ),
                            height: 50,
                            width: size.width * 0.1,
                            child: Image.asset(
                              "assets/images/logo.png",
                              width: size.width * 0.1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: size.width * 0.1),
                          Container(
                            width: size.width * 0.1,
                            height: size.height * 0.3,
                            child: Image.asset(
                              "assets/images/done.png",
                              width: size.width * 0.1,
                            ),
                          ),
                          // SizedBox(width: size.width * 0.1),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: size.height * 0.23, right: size.width * 0.15),
                    width: size.width * 0.3,
                    height: size.height * 0.64,
                    //width: size.width * 0.7,

                    padding: EdgeInsets.fromLTRB(100, 80, 100, 0),
                    color: Color.fromRGBO(250, 250, 250, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const header(left: 0, top: 0),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
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
                        Expanded(
                          child: Container(
                            width: size.width,
                            height: size.height * 0.1,
                            margin: const EdgeInsets.only(bottom: 120),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
