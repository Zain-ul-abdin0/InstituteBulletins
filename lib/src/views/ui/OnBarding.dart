import 'package:InstitutesBulliten/src/views/ui/LoginAndSignUp.dart';
import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OnBoardingState();
  }
}

class OnBoardingState extends State<OnBoarding> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: const Color(0xFF1BBC9B),
        pages: pages,
        skipClicked: (value) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return LoginAndSignUp();
              },
            ),
          );
          print(value);
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        getStartedClicked: (value) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return LoginAndSignUp();
              },
            ),
          );
          print(value);
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Get Started clicked"),
          ));
        },
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
      title: 'Choose your Institute',
      description: 'Easily find your Institute and you will get a wide range',
      titleColor: Colors.black,
      descripColor: const Color(0xFF929794),
      imagePath: 'assets/images/Book.png',
    ),
    SkOnboardingModel(
        title: 'Reviews and Ratings',
        description:
            'By looking up reviews and  ratings, you can have better choice',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/images/Book.png'),
    SkOnboardingModel(
        title: 'Get quick and easy admission',
        description:
            'Submit the admission form of the institute from our platform',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/images/Book.png'),
  ];
}
