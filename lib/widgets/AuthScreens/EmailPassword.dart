import 'package:flutter/material.dart';

class EmailPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      height: 42,
      child: FlatButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        color: Color(0xFF1BBC9B),
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: () {
          /*...*/
        },
        child: Text(
          "Send Email",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
