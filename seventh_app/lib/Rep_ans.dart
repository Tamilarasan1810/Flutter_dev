import 'package:flutter/material.dart';

class DynamicAnswer extends StatelessWidget {
  final String answerText;
  final int x;
  DynamicAnswer(this.answerText, this.x);
  @override
  Widget build(BuildContext context) {
    print(answerText);
    return Column(
      children: [
        Text(answerText),
        Text('${x}'),
      ],
    );
  }
}

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
