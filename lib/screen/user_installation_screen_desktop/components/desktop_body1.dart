import 'package:flutter/material.dart';
import 'package:test/components/first_screen_text.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktopSide.dart';
import 'package:test/screen/user_installation_screen_web/components/tablet_side.dart';

class DesktopBody1 extends StatefulWidget {
  const DesktopBody1({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopBody1> createState() => _DesktopBody1State();
}

class _DesktopBody1State extends State<DesktopBody1> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
                  SizedBox(height: size.height * 0.18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width * 0.1),
                      Container(
                        width: size.width * 0.1,
                        height: size.height * 0.3,
                        child: Image.asset(
                          "assets/images/plant1.png",
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
                height: size.height * 0.6,
                //width: size.width * 0.7,

                padding: EdgeInsets.fromLTRB(100, 80, 100, 0),
                color: Color.fromRGBO(250, 250, 250, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const header(left: 0, top: 0),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const SizedBox(
                        //width: size.width * 0.8,
                        child: FirstScteenText(),
                        //  ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      width: size.width * 0.7,
                      // margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Container(
                        padding: const EdgeInsets.only(left: 0),
                        margin: const EdgeInsets.only(top: 16, left: 0),
                        alignment: Alignment.topLeft,
                        //width: size.width * 0.8,
                        height: size.height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Transform.scale(
                              alignment: Alignment.centerLeft,
                              scale: 0.8,
                              child: Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                checkColor: Colors.white,
                                activeColor:
                                    const Color.fromRGBO(32, 80, 170, 1),
                                focusColor: Colors.lightBlue,
                                value: checked,
                                onChanged: (newVal) {
                                  setState(() => checked = !checked);
                                },
                              ),
                            ),
                            const Text(
                              'Accept all terms & conditions',
                              style: TextStyle(
                                color: Color.fromRGBO(30, 80, 170, 1),
                                fontSize: 12,
                                height: 1.6,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: size.width,
                        height: size.height * 0.1,
                        margin: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SecondStepButton(
                              top: 0,
                              right: 0,
                              checked: checked,
                              text: 'SETUP',
                              textColor: const Color.fromRGBO(255, 255, 255, 1),
                              routeName: '/user-installation',
                              buttonBackgroundColor:
                                  const Color.fromRGBO(255, 125, 100, 1),
                              paddingHorizontal: 12,
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
    );
  }
}
