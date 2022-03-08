import "package:flutter/material.dart";

import "./question.dart";

class Answer extends StatelessWidget {
  @override
  final VoidCallback
      selectHandler; // i get error for         final Function selectHandler        so i use         final VoidCallback selectHandler
  final String answer;
  Answer(this.selectHandler, this.answer); //constructor   :)

  Widget build(BuildContext context) {
    print(answer);
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
}
