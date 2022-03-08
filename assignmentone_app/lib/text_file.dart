import "package:flutter/material.dart";

class Textbody extends StatelessWidget {
  // const Text({ Key? key }) : super(key: key);
  final String Text_body;
  Textbody(this.Text_body);
  @override
  Widget build(BuildContext context) {
    return Text(
      Text_body,
      style: TextStyle(color: Colors.pinkAccent, fontSize: 50),
      textAlign: TextAlign.center,
    );
  }
}
