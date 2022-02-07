import 'package:flutter/material.dart';

import 'components/template_for_web.dart';

class UserInstalaltionScreen3Web extends StatefulWidget {
  const UserInstalaltionScreen3Web({Key? key}) : super(key: key);

  @override
  _UserInstalaltionScreen3WebState createState() =>
      _UserInstalaltionScreen3WebState();
}

class _UserInstalaltionScreen3WebState
    extends State<UserInstalaltionScreen3Web> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = _controller1.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
  }

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TemplateForWeb(
      child: SizedBox(
        width: size.width * 0.7,
        // padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //styling
              // SizedBox(
              //   height: MediaQuery.of(context).size.width * 0.1,
              // ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.3,
                    height: size.height * 0.07,
                    child: TextFormField(
                      decoration: InputDecoration(
                        //labelText: 'First name',
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        filled: true,
                        fillColor: const Color.fromRGBO(10, 25, 49, 0.05),
                        hintText: 'First name',
                        hintStyle: const TextStyle(
                          color: Color.fromRGBO(10, 25, 49, 0.5),
                          height: 1.6,
                          fontSize: 12,
                        ),
                        contentPadding: const EdgeInsets.only(
                            top: 15.0, bottom: 10.0, left: 16.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      obscureText: true,
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
                    width: size.width * 0.3,
                    height: size.height * 0.07,
                    child: TextFormField(
                      decoration: InputDecoration(
                        //labelText: 'First name',
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        filled: true,
                        fillColor: const Color.fromRGBO(10, 25, 49, 0.05),
                        hintText: 'Last name',
                        hintStyle: const TextStyle(
                          color: Color.fromRGBO(10, 25, 49, 0.5),
                          height: 1.6,
                          fontSize: 12,
                        ),
                        contentPadding: const EdgeInsets.only(
                            top: 15.0, bottom: 10.0, left: 16.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      onFieldSubmitted: (value) {},
                      obscureText: true,
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
                height: 32,
              ),
              SizedBox(
                width: size.width * 0.3,
                height: size.height * 0.07,
                child: TextFormField(
                  decoration: InputDecoration(
                    //labelText: 'First name',
                    errorBorder: InputBorder.none,
                    // focusedErrorBorder: InputBorder.none,
                    // filled: true,
                    fillColor: const Color.fromRGBO(10, 25, 49, 0.05),
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(10, 25, 49, 0.5),
                      height: 1.6,
                      fontSize: 12,
                    ),
                    contentPadding: const EdgeInsets.only(
                        top: 15.0, bottom: 10.0, left: 16.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
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
              RaisedButton(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                onPressed: () => _submit(),
              )
            ],
          ),
        ),
      ),
      backRouteName: '/user-installation',
      step: 3,
    );

    // child: SizedBox(
    //   width: size.width * 0.7,
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Row(
    //         children: [
    //           SizedBox(
    //             width: size.width * 0.3,
    //             height: size.height * 0.07,
    //             child: TextField(
    //               onChanged: (text) => setState(() {}),
    //               controller: _controller1,
    //               textAlign: TextAlign.start,
    //               style: const TextStyle(
    //                 fontWeight: FontWeight.normal,
    //                 color: Colors.black54,
    //                 fontSize: 12,
    //               ),
    //               maxLines: 1,
    //               decoration: InputDecoration(
    //                 errorBorder: InputBorder.none,
    //                 focusedErrorBorder: InputBorder.none,
    //                 // errorStyle: TextStyle(),

    //                 filled: true,
    //                 fillColor: const Color.fromRGBO(10, 25, 49, 0.05),
    //                 hintText: 'First name',
    //                 hintStyle: const TextStyle(
    //                   color: Color.fromRGBO(10, 25, 49, 0.5),
    //                   height: 1.6,
    //                   fontSize: 12,
    //                 ),
    //                 contentPadding: const EdgeInsets.only(
    //                     top: 15.0, bottom: 10.0, left: 16.0),
    //                 focusedBorder: OutlineInputBorder(
    //                   borderSide: const BorderSide(color: Colors.white),
    //                   borderRadius: BorderRadius.circular(4),
    //                 ),
    //                 enabledBorder: UnderlineInputBorder(
    //                   borderSide: const BorderSide(color: Colors.green),
    //                   borderRadius: BorderRadius.circular(4),
    //                 ),
    //                 errorText: _errorText,
    //                 // TODO: add errorHint
    //               ),
    //             ),
    //           ),
    //           const SizedBox(
    //             width: 16,
    //           ),
    //           SizedBox(
    //             width: size.width * 0.3,
    //             height: size.height * 0.07,
    //             child: TextField(
    //               textAlign: TextAlign.start,
    //               maxLines: 1,
    //               decoration: InputDecoration(
    //                 filled: true,
    //                 fillColor: const Color.fromRGBO(10, 25, 49, 0.05),
    //                 hintText: 'Last name',
    //                 hintStyle: const TextStyle(
    //                   color: Color.fromRGBO(10, 25, 49, 0.5),
    //                   height: 1.6,
    //                   fontSize: 12,
    //                 ),
    //                 contentPadding: const EdgeInsets.only(
    //                     top: 5.0, bottom: 10.0, left: 16.0),
    //                 focusedBorder: OutlineInputBorder(
    //                   borderSide: const BorderSide(color: Colors.white),
    //                   borderRadius: BorderRadius.circular(4),
    //                 ),
    //                 enabledBorder: UnderlineInputBorder(
    //                   borderSide: const BorderSide(color: Colors.white),
    //                   borderRadius: BorderRadius.circular(4),
    //                 ),
    //                 // TODO: add errorHint
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         height: 32,
    //       ),
    //       SizedBox(
    //         width: size.width * 0.3,
    //         height: size.height * 0.07,
    //         child: TextField(
    //           textAlign: TextAlign.start,
    //           maxLines: 1,
    //           decoration: InputDecoration(
    //             filled: true,
    //             fillColor: const Color.fromRGBO(10, 25, 49, 0.05),
    //             hintText: 'Email',
    //             hintStyle: const TextStyle(
    //               color: Color.fromRGBO(10, 25, 49, 0.5),
    //               height: 1.6,
    //               fontSize: 12,
    //             ),
    //             contentPadding:
    //                 const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 16.0),
    //             focusedBorder: OutlineInputBorder(
    //               borderSide: const BorderSide(color: Colors.white),
    //               borderRadius: BorderRadius.circular(4),
    //             ),
    //             enabledBorder: UnderlineInputBorder(
    //               borderSide: const BorderSide(color: Colors.white),
    //               borderRadius: BorderRadius.circular(4),
    //             ),
    //             // TODO: add errorHint
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ),
    //   backRouteName: '/user-installation',
    //   step: 3,
    // );
  }
}
