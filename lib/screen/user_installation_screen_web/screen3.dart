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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TemplateForWeb(
      child: SizedBox(
        width: size.width * 0.8,
        height: 20,
        child: Text('hi'),
      ),
      backRouteName: '/user-installation',
      step: 3,
    );
  }
}
