import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final int questionIndex;
  Question(this.questionText, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText + "   ${questionIndex}",
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ans_display extends StatelessWidget {
  final String answer;
  ans_display(this.answer);
  @override
  Widget build(BuildContext context) {
    print(answer);
    return Text(answer);
  }
}
