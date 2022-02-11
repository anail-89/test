import 'package:flutter/material.dart';
import 'package:test/components/first_screen_text.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/screen/user_installation_screen_web/components/tablet_side.dart';

class WebBody1 extends StatefulWidget {
  const WebBody1({
    Key? key,
  }) : super(key: key);

  @override
  State<WebBody1> createState() => _WebBody1State();
}

class _WebBody1State extends State<WebBody1> {
  bool checked = false;
  void changeCheckbox(newval) {
    setState(() => checked = !checked);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
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
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.fromLTRB(60, 58, 0, 58),
                        // width: double.infinity,

                        height: size.height * 0.27,

                        // top: size.height / 14,
                        child: Image.asset(
                          "assets/images/plant1.png",
                          // width: 160,
                          // height: 160,
                        ),
                      ),
                      // SizedBox(
                      //   height: size.height * 0.04,
                      // ),
                      Container(
                        alignment: Alignment.topLeft,
                        height: size.height * 0.15,
                        width: size.width * 0.65,
                        //alignment: Alignment.topLeft,
                        //margin: const EdgeInsets.fromLTRB(32, 25, 16, 0),
                        child: SizedBox(
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
                              //  ClipRRect(
                              // borderRadius: BorderRadius.circular(29),
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
                                  onChanged: (newVal) => changeCheckbox(newVal),
                                ),
                              ),
                              // ),
                              const Text(
                                'Accept all terms & conditions',
                                style: TextStyle(
                                  color: Color.fromRGBO(30, 80, 170, 1),
                                  fontSize: 12,
                                  height: 1.6,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              // const SizedBox(width: 20.0),
                              // SizedBox(height: 20.0),
                            ],
                          ),
                        ),
                      ), //  Row(
                      // height: 100,
                      // width: size.width,
                      //height: 100,
                      // child:
                      Expanded(
                        child: Container(
                          width: size.width,
                          height: size.height * 0.1,
                          margin: const EdgeInsets.only(right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SecondStepButton(
                                top: 0,
                                checked: checked,
                                text: 'SETUP',
                                textColor:
                                    const Color.fromRGBO(255, 255, 255, 1),
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
                      //),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
