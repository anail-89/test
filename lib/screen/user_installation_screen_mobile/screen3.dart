import 'package:flutter/material.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/screen/user_installation_screen_mobile/testForMobileScreen.dart';

import '../../components/background.dart';
import 'components/template_for_mobile.dart';

class UserInstalaltionScreen3Mobile extends StatefulWidget {
  const UserInstalaltionScreen3Mobile({Key? key}) : super(key: key);

  @override
  _UserInstalaltionScreen3MobileState createState() =>
      _UserInstalaltionScreen3MobileState();
}

class _UserInstalaltionScreen3MobileState
    extends State<UserInstalaltionScreen3Mobile> {
  final _formKey = GlobalKey<FormState>();

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    Navigator.of(context).pushNamed('/password-setup');
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TestForMobile(
      step: 3,
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.9,
                  height: size.height * 0.1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 32),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'First name',
                        errorBorder: InputBorder.none,
                        errorStyle: TextStyle(
                          color: Color.fromRGBO(255, 125, 100, 1),
                        ),
                        focusedErrorBorder: InputBorder.none,
                        filled: true,
                        fillColor: const Color.fromRGBO(10, 25, 49, 0.05),
                        contentPadding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 12.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      // keyboardType: TextInputType.text,
                      style: const TextStyle(
                        color: Color.fromRGBO(10, 25, 49, 0.5),
                        height: 1.6,
                        fontSize: 12,
                      ),
                      // maxLines: 1,
                      //onFieldSubmitted: (value) {},
                      // obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Can\'t be empty!';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: size.width * 0.9,
                  height: size.height * 0.1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 32),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Last name',
                        errorBorder: InputBorder.none,
                        errorStyle: TextStyle(
                          color: Color.fromRGBO(255, 125, 100, 1),
                        ),
                        focusedErrorBorder: InputBorder.none,
                        filled: true,
                        fillColor: const Color.fromRGBO(10, 25, 49, 0.05),
                        contentPadding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 12.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      // keyboardType: TextInputType.text,
                      style: const TextStyle(
                        color: Color.fromRGBO(10, 25, 49, 0.5),
                        height: 1.6,
                        fontSize: 12,
                      ),
                      // maxLines: 1,
                      //onFieldSubmitted: (value) {},
                      // obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Can\'t be empty!';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: size.width * 0.9,
              height: size.height * 0.1,
              child: Container(
                margin: const EdgeInsets.only(left: 32),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    errorBorder: InputBorder.none,
                    errorStyle: TextStyle(
                      color: Color.fromRGBO(255, 125, 100, 1),
                    ),
                    focusedErrorBorder: InputBorder.none,
                    filled: true,
                    fillColor: const Color.fromRGBO(10, 25, 49, 0.05),
                    contentPadding: const EdgeInsets.only(
                        top: 5.0, bottom: 5.0, left: 12.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  // keyboardType: TextInputType.text,
                  style: const TextStyle(
                    color: Color.fromRGBO(10, 25, 49, 0.5),
                    height: 1.6,
                    fontSize: 12,
                  ),
                  // maxLines: 1,
                  // onFieldSubmitted: (value) {},
                  // obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              // height: 100,
              width: size.width * 0.8,
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SecondStepButton(
                      checked: true,
                      text: 'BACK',
                      textColor: Color.fromRGBO(30, 80, 170, 1),
                      buttonBackgroundColor: Colors.white,
                      right: 0,
                      top: 0,
                      left: 0,
                      paddingHorizontal: 16,
                      routeName: '/user-installation',
                      width: 74,
                      height: 45,
                    ),
                    SecondStepButton(
                      checked: true,
                      text: 'CANCEL',
                      textColor: const Color.fromRGBO(30, 80, 170, 1),
                      buttonBackgroundColor: Colors.white,
                      right: 0,
                      top: 0,
                      left: 0,
                      paddingHorizontal: 16,
                      //  left: size.width * 0.,
                      routeName: '/',
                      width: 100,
                      height: 45,
                      //left: size.width * 0.4 - 60,
                      //left: 100,
                    ),
                    // const SizedBox(
                    //   width: 16,
                    // ),
                    Container(
                      alignment: Alignment.topRight,
                      width: 95,
                      height: 45,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                      // margin: EdgeInsets.only(right: 0),
                      //margin: EdgeInsets.fromLTRB(0, 100, 100, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: ElevatedButton(
                          child: const Text(
                            'NEXT',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: _submit,
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(255, 125, 100, 1),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  height: 1.6,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
