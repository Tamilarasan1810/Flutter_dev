import 'dart:html';

import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerquestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color",
      "What's your favourite animal",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: Column(
          children: [
            Question(
              // Question function is imported from question.dart file
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text("Answer1"),
              onPressed: _answerquestion,
            ),
            RaisedButton(
              child: Text("Answer2"),
              onPressed: _answerquestion,
            ),
            RaisedButton(
              child: Text("Answer3"),
              onPressed: _answerquestion,
            ),
            RaisedButton(
              child: Text("Answer4"),
              onPressed: () => print("answer 4 choosen"),
            ),
            RaisedButton(
              child: Text("Answer5"),
              onPressed: () {
                //....
                print("answer 5 choosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
