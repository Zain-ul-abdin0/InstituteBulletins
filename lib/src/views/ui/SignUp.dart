import 'package:InstitutesBulliten/src/views/ui/MyNavigationBar.dart';
import 'package:InstitutesBulliten/src/views/ui/SignUp.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUp> {
  String email;
  String password;
  String username;
  String confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 25.0,
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                'Username',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              elevation: 3.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF6F6F6),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "alexandar ",
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.perm_identity,
                      color: Color(0xFF1BBC9B),
                    ),
                  ),
                  maxLines: 1,
                  onChanged: (text) {
                    setState(() {
                      this.username = text;
                      print(this.email);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              elevation: 3.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF6F6F6),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "alexandar12@gmail.com",
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.mail_outline,
                      color: Color(0xFF1BBC9B),
                    ),
                  ),
                  maxLines: 1,
                  onChanged: (text) {
                    setState(() {
                      this.email = text;
                      print(this.email);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              elevation: 3.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF6F6F6),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "********",
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.lock_outline,
                      color: Color(0xFF1BBC9B),
                    ),
                  ),
                  maxLines: 1,
                  onChanged: (text) {
                    setState(() {
                      this.password = text;
                      print(this.email);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              elevation: 3.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "**********",
                    suffixIcon: Icon(
                      Icons.lock_outline,
                      color: Color(0xFF1BBC9B),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                  obscureText: true,
                  maxLines: 1,
                  onChanged: (text) {
                    setState(() {
                      this.email = text;
                      print(this.confirmPassword);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "Sign Up".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Home();
                      },
                    ),
                  );
                },
                color: Color(0xFF1BBC9B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
