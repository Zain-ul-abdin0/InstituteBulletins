import 'package:InstitutesBulliten/src/views/ui/Login.dart';
import 'package:InstitutesBulliten/src/views/ui/SignUp.dart';
import 'package:flutter/material.dart';

class LoginAndSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Color(0xFFF6F6F6),
            appBar: AppBar(
              title: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Welcome to",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF1BBC9B)),
                      ),
                      Text(
                        "Institue Bulletins App!",
                        style: TextStyle(
                          color: Color(0xFF1BBC9B),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Image(image: AssetImage('assets/images/Book.png'))
                ],
              ),
              backgroundColor: Color(0xFFF6F6F6),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 270,
                    child: TabBar(
                        unselectedLabelColor: Color(0xFF1BBC9B),
                        labelStyle: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Family Name'), //For Un-selected Tabs

                        unselectedLabelStyle: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Family Name'), //For Un-selected Tabs
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Color(0xFF1BBC9B),
                        labelColor: Color(0xFF1BBC9B),
                        tabs: [
                          Tab(
                            child: Text("Sign Up"),
                          ),
                          Tab(
                            child: Text("Login"),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                SignUp(),
                LoginScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
