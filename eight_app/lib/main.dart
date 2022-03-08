//import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';

import './question.dart';

import "./answer.dart";

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
      if (_questionIndex > 5) {
        _questionIndex = 0;
      }
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color?",
      "What's your favourite animal?",
      "Have you been to India?",
      "Have you visited TamilNadu :)",
      "Do you Know Tamilarasan?",
      "Do you agree, that Tamilarasan is a Stupid Useless Idiot?",
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
              questions[_questionIndex], _questionIndex,
            ),
            Answer(_answerquestion, "Option_A"),
            Answer(_answerquestion, "Option_B"),
            Answer(_answerquestion, "Option_C"),
          ],
        ),
      ),
    );
  }
}
