import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:test/components/first_screen_text.dart';
import 'package:test/components/header.dart';
import 'package:test/components/second_step_button.dart';
import 'package:test/screen/user_installation_screen_desktop/components/desktopSide.dart';
import 'package:test/screen/user_installation_screen_desktop/components/template_for_desktop.dart';
import 'package:test/screen/user_installation_screen_web/components/tablet_side.dart';

class DesktopBody3 extends StatefulWidget {
  const DesktopBody3({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopBody3> createState() => _DesktopBody3State();
}

class _DesktopBody3State extends State<DesktopBody3> {
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
    return TemplateForDesktop(
      child: Container(
        width: size.width * 0.7,
        // padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          //autovalidateMode : AutovalidateMode.invalid,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //styling
              // SizedBox(
              //   height: MediaQuery.of(context).size.width * 0.1,
              // ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.14,
                    height: size.height * 0.08,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'First name',
                        errorBorder: InputBorder.none,
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
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: size.width * 0.14,
                    height: size.height * 0.08,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Last name',
                        errorBorder: InputBorder.none,
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

                  // SizedBox(
                  //   width: size.width * 0.3,
                  //   //             height: size.height * 0.07,
                  //   child: TextFormField(
                  //     decoration: InputDecoration(labelText: 'E-Mail'),
                  //     keyboardType: TextInputType.emailAddress,
                  //     onFieldSubmitted: (value) {
                  //       //Validator
                  //     },
                  //     validator: (value) {
                  //       if (value!.isEmpty ||
                  //           !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  //               .hasMatch(value)) {
                  //         return 'Enter a valid email!';
                  //       }
                  //       return null;
                  //     },
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: size.width * 0.14,
                height: size.height * 0.08,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    errorBorder: InputBorder.none,
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
              // SizedBox(
              //   height: 30,
              // ),
              SizedBox(
                height: 50,
                width: size.width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                      height: 36,
                    ),
                    SecondStepButton(
                      checked: true,
                      text: 'CANCEL',
                      textColor: const Color.fromRGBO(30, 80, 170, 1),
                      buttonBackgroundColor: Colors.white,
                      right: 0,
                      top: 0,
                      left: 70,
                      paddingHorizontal: 16,
                      //  left: size.width * 0.,
                      routeName: '/',
                      width: 100,
                      height: 36,
                      //left: size.width * 0.4 - 60,
                      //left: 100,
                    ),
                    // const SizedBox(
                    //   width: 16,
                    // ),
                    Container(
                      alignment: Alignment.topRight,
                      width: 95,
                      height: 40,
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
                    )
                  ],
                ),
              ),
              //box styling
              // SizedBox(
              //   height: MediaQuery.of(context).size.width * 0.1,
              // ),
              //text input
              // TextFormField(
              //   decoration: InputDecoration(labelText: 'Password'),
              //   keyboardType: TextInputType.visiblePassword,
              //   onFieldSubmitted: (value) {},
              //   obscureText: true,
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Enter a valid password!';
              //     }
              //     return null;
              //   },
              // ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.width * 0.1,
              // ),

              // RaisedButton(
              //   padding: EdgeInsets.symmetric(
              //     vertical: 10.0,
              //     horizontal: 15.0,
              //   ),
              //   child: Text(
              //     "Submit",
              //     style: TextStyle(
              //       fontSize: 24.0,
              //     ),
              //   ),
              //   onPressed: () => _submit(),
              // )
            ],
          ),
        ),
      ),
      step: 3,
    );
  }
}
