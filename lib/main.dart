import 'package:InstitutesBulliten/src/views/ui/LoginAndSignUp.dart';
import 'package:InstitutesBulliten/src/views/ui/MyNavigationBar.dart';
import 'package:InstitutesBulliten/src/views/ui/SearchScreen.dart';
import 'package:InstitutesBulliten/src/views/ui/JobApplicationForm.dart';
import 'package:mysplashscreen/mysplashscreen.dart';

import 'package:flutter/material.dart';

import 'src/views/ui/OnBarding.dart';
import 'src/views/ui/OnBarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MySplashScreen(
      loadtimeSec: 2,
      loading: false,
      assetimage: ('assets/images/Book.png'),
      nextscreen: OnBoarding(),
      backcolor: Color(0xFF1BBC9B),
      bottomtext: 'Institute Bullietens',
      bottomtextstyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    ));
  }
}
