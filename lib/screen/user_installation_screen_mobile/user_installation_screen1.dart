import 'package:flutter/material.dart';
import 'package:test/screen/user_installation_screen_mobile/components/body1.dart';

class UserInstallationScreenMobile1 extends StatelessWidget {
  const UserInstallationScreenMobile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          //toolbarHeight: 75,
          // title: Text('App Bar!'),
          flexibleSpace: const Image(
            image: AssetImage('assets/images/appbar.png'),
            fit: BoxFit.cover,
            //height: 120,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (builder, constraints) {
              return const SingleChildScrollView(
                child: Body1(),
              );
            },
          ),
        ));
  }
}
