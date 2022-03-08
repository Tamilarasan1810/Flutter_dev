import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  // ignore: non_constant_identifier_names
  final int Score;
  final VoidCallback restartQuiz;
  const Result(this.Score, this.restartQuiz);
  @override
  String get resultPhrase {
    String resultText;
    if (Score <= 10) {
      resultText = "You're very bad ";
    } else if (Score <= 20) {
      resultText = "You're Some how better !!!";
    } else {
      resultText = "You're awesome Man !!! you done a good job :)";
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase + "\n Total Score ::: ${Score} :::",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Restart Quiz !"),
            onPressed: restartQuiz,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
