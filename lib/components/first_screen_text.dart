import 'package:flutter/material.dart';

class FirstScteenText extends StatelessWidget {
  const FirstScteenText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
          text:
              "There is no added root user. \nYou should install yourself as a root user. After success installation the",
          children: [
            TextSpan(
                text: " Install_Root_User.exe ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    "file will be\n automatically moved to trash.\nFollow to the steps."),
          ]),
      style: TextStyle(
        color: Color.fromRGBO(10, 25, 49, 1),
        fontSize: 12,
        height: 2,
      ),
    );
  }
}
