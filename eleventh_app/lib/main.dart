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
      "answer": [
        {'text': "Red", 'score': 10},
        {'text': "Green", 'score': 7},
        {'text': "Blue", 'score': 6},
      ]
    },
    {
      "questiontext": "What's your favourite animal?",
      "answer": [
        {'text': "Dog", 'score': 8},
        {'text': "Rabbit", 'score': 2},
        {'text': "Elephant", 'score': 6},
        {'text': "Cat", 'score': 10},
      ]
    },
    {
      "questiontext": "Have you been to India?",
      "answer": [
        {'text': "Yup", 'score': 10},
        {'text': "Nope", 'score': 2},
        {'text': "Waste Country :)", 'score': 5},
      ]
    },
    {
      "questiontext": "Have you visited TamilNadu :)",
      "answer": [
        {'text': "Yup", 'score': 10},
        {'text': "Nope", 'score': 2},
        {'text': "Waste State :(", 'score': 5},
      ]
    },
    {
      "questiontext": "Do you Know Tamilarasan?",
      "answer": [
        {'text': "Yup", 'score': 10},
        {'text': "Nope", 'score': 2},
        {'text': "Waste Person :(", 'score': 5},
      ]
    },
    {
      "questiontext":
          "Do you agree, that Tamilarasan is a Stupid Useless Idiot?",
      "answer": [
        {'text': "Yup", 'score': 10},
        {'text': "Nope", 'score': 2},
        {'text': "May be", 'score': 7},
      ]
    },
  ];

  var _totalScore = 0;
  void _answerquestion(int score) {
    _totalScore += score;
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

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
                _answerquestion,
                _questions,
                _questionIndex,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }

  List<String> newMethod(List<Map<String, Object>> _questions) =>
      _questions[_questionIndex]["answer"] as List<String>;
}
