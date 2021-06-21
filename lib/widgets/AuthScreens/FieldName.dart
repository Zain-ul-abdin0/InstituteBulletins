import 'package:InstitutesBulliten/src/views/ui/ForgetPassword.dart';
import 'package:flutter/material.dart';

class FieldName extends StatelessWidget {
  FieldName(this.name, this.check);
  String name;
  bool check;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xffB2B2B2),
              ),
            ),
            check == true
                ? GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ForgetPassword('Forgot Password')),
                      )
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFF0058),
                      ),
                    ),
                  )
                : Text('')
          ],
        ),
      ),
    );
  }
}
