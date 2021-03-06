import 'package:flutter/material.dart';
import 'package:test/components/background.dart';
import 'package:test/components/first_screen_text.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';

class Body1 extends StatefulWidget {
  const Body1({
    Key? key,
  }) : super(key: key);

  @override
  State<Body1> createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      // child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.2,
          ),
          const header(),
          // SizedBox(
          //   height: size.height * 0.009,
          // ),

          Expanded(
            //alignment: Alignment.topLeft,

            child: Container(
              margin: const EdgeInsets.fromLTRB(32, 25, 16, 0),
              width: MediaQuery.of(context).size.width,
              // height: size.height * 0.9,
              child: FirstScteenText(),
            ),
          ),
          //),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            // alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //  ClipRRect(
                // borderRadius: BorderRadius.circular(29),
                Transform.scale(
                  scale: 0.7,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    checkColor: Colors.white,
                    activeColor: const Color.fromRGBO(32, 80, 170, 1),
                    focusColor: Colors.lightBlue,
                    value: checked,
                    onChanged: (newValue) {
                      setState(() => checked = newValue!);
                    },
                  ),
                ),
                // ),
                const Text(
                  'Accept all terms & conditions',
                  style: TextStyle(
                    color: Color.fromRGBO(30, 80, 170, 1),
                    fontSize: 12,
                    // height: 16,
                  ),
                ),
                // const SizedBox(width: 20.0),
                // SizedBox(height: 20.0),
              ],
            ),
          ),
          // Expanded(
          // height: size.height * 0.02,

          // child: Container(
          // height: 100,
          // width: size.width * 0.9,
          // child:
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SecondStepButton(
                checked: checked,
                text: 'SETUP',
                textColor: Color.fromRGBO(255, 255, 255, 1),
                routeName: '/user-installation',
                buttonBackgroundColor: Color.fromRGBO(255, 125, 100, 1),
                paddingHorizontal: 12,
                textFontSize: 12,
                bottom: 24,
                width: 70,
                height: 40,
              ),
            ],
          ),
          // ),
          //),
          // SizedBox(
          //   height: 24,
          // ),
        ],
      ),
      // ),
    );
  }
}
