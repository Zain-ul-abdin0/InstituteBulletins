import 'package:InstitutesBulliten/src/views/ui/FavouritesScreen.dart';
import 'package:InstitutesBulliten/src/views/ui/HomeScreen.dart';
import 'package:InstitutesBulliten/src/views/ui/InstituteScreen.dart';
import 'package:InstitutesBulliten/src/views/ui/LoginAndSignUp.dart';
import 'package:InstitutesBulliten/src/views/ui/MyNavigationBar.dart';
import 'package:InstitutesBulliten/src/views/ui/SearchScreen.dart';
import 'package:InstitutesBulliten/src/views/ui/JobApplicationForm.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JobApplicationForm(),
    );
  }
}
