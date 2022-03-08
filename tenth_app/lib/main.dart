// import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';

import './question.dart';

import "./answer.dart";

import './quiz.dart';

import './result.dart';

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

  var _questions = const [
    {
      "questiontext": "What's your favourite color?",
      "answer": ["Red", "Greeen", "Blue"]
    },
    {
      "questiontext": "What's your favourite animal?",
      "answer": ["Dog", "Rabbit", "Elephant", "Cat"]
    },
    {
      "questiontext": "Have you been to India?",
      "answer": ["Yup", "Nope", "Waste Country :)"]
    },
    {
      "questiontext": "Have you visited TamilNadu :)",
      "answer": ["Yup", "Nope", "Waste State :("]
    },
    {
      "questiontext": "Do you Know Tamilarasan?",
      "answer": ["Yup", "Nope", "Waste Person :("]
    },
    {
      "questiontext":
          "Do you agree, that Tamilarasan is a Stupid Useless Idiot?",
      "answer": ["yes, He is stupid", "No", "May be"]
    },
  ];

  void _answerquestion() {
    setState(() {
      _questionIndex++;
      // if (_questionIndex >= _questions.length) {
      //   _questionIndex = 0;
      // } else {
      //   print("You are at ${_questionIndex} / $ _questions.length}");
      // }
      print("You are at ${_questionIndex} / ${_questions.length}");
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // _questions = [];
    //var newMethod2 = newMethod _questions[_questionIndex]["questiontext"]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tenth App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerquestion: _answerquestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }

  List<String> newMethod(List<Map<String, Object>> _questions) =>
      _questions[_questionIndex]["answer"] as List<String>;
}
