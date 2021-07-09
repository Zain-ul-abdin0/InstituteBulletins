import 'package:InstitutesBulliten/src/views/ui/LoginAndSignUp.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1BBC9B),
        title: Text("Settings"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.arrow_back, // add custom icons also
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 20, 10.0, 0),
        child: ListView(
          children: <Widget>[
            Divider(),
            Container(height: 15.0),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Profile Setting".toUpperCase(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "Jane Mary Doe",
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.edit,
                  size: 20.0,
                ),
                onPressed: () {},
                tooltip: "Edit",
              ),
            ),
            ListTile(
              title: Text(
                "Change Password",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "***********",
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.edit,
                  size: 20.0,
                ),
                onPressed: () {},
                tooltip: "Edit",
              ),
            ),
            Divider(),
            Container(height: 15.0),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Notifications".toUpperCase(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "New Institutes Update",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.radio_button_checked,
                  size: 20.0,
                ),
                onPressed: () {},
                tooltip: "Edit",
              ),
            ),
            Divider(),
            Container(height: 15.0),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Support".toUpperCase(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "FAQ's",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
