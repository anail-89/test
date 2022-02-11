import 'package:flutter/material.dart';
import 'package:test/components/second_step_button.dart';

import 'components/template_for_web.dart';

class UserInstalaltionScreen4Web extends StatefulWidget {
  const UserInstalaltionScreen4Web({Key? key}) : super(key: key);

  @override
  _UserInstalaltionScreen4WebState createState() =>
      _UserInstalaltionScreen4WebState();
}

class _UserInstalaltionScreen4WebState
    extends State<UserInstalaltionScreen4Web> {
  final _formKey = GlobalKey<FormState>();

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    Navigator.of(context).pushNamed('/installation-done');
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var passVal;
    return TemplateForWeb(
      child: SizedBox(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.3,
                    height: size.height * 0.1,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'Password',
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
                        passVal = value;
                        if (value!.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9]{4,32}$").hasMatch(value)) {
                          return 'Enter a valid password!';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                    height: size.height * 0.1,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
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
                        // if (value!.isEmpty ||
                        //     !RegExp(r"^[a-zA-Z0-9]{4,32}$").hasMatch(value)) {
                        //   return 'Enter a valid password!';
                        // }
                        if (passVal.length > 0 && passVal == value) {
                          return null;
                        } else {
                          return 'Enter a valid password!';
                        }
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 100,
                width: size.width * 0.7,
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
                      routeName: '/personal-information',
                      width: 74,
                      height: 36,
                    ),
                    SecondStepButton(
                      checked: true,
                      text: 'CANCEL',
                      textColor: const Color.fromRGBO(30, 80, 170, 1),
                      //routeName: '/user-installation',
                      buttonBackgroundColor: Colors.white,
                      right: 0,
                      top: 0,
                      left: size.width * 0.31,
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
            ],
          ),
        ),
      ),
      step: 4,
    );
  }
}
