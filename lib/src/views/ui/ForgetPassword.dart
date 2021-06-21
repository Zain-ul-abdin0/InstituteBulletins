import 'package:InstitutesBulliten/widgets/AuthScreens/EmailPassword.dart';
import 'package:InstitutesBulliten/widgets/AuthScreens/FieldName.dart';
import 'package:InstitutesBulliten/widgets/AuthScreens/TextInput.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword(this.titlee);
  String titlee;
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String email;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
          backgroundColor: Color(0xFF1BBC9B),
          title: Text(widget.titlee),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Institute Bullitens',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1BBC9B)),
              ),
              Text(
                'Enter the email address you used to create your account and we will email you a link to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Column(children: <Widget>[
                FieldName('Email Address', false),
                SizedBox(
                  height: 5,
                ),
                TextInput(
                    hintText: 'Enter your email',
                    email: email,
                    onChangeText: (String val) {
                      setState(() {
                        email = val;
                        print(email);
                      });
                    }),
              ]),
              SizedBox(height: 50),
              EmailPassword(),
              Text(
                'If you dont find email in your inbox, trying looking for it in spam folder',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
            ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
