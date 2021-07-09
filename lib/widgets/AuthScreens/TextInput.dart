import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final Function(String) onChangeText;
  final String hintText;
  final String email;

  TextInput({@required this.hintText, @required this.email, this.onChangeText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: MediaQuery.of(context).size.width / 1.1,
      child: TextField(
          onChanged: (text) {
            onChangeText(text);
          },
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hintStyle: TextStyle(fontSize: 12.0, color: Color(0xffB2B2B2)),
              hintText: this.hintText,
              focusColor: Colors.white,
              filled: true,
              fillColor: Color(0xff333333))),
    );
  }
}
