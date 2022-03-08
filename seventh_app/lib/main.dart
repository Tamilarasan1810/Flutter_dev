import 'dart:html';
//import 'dart:ffi';

import 'package:flutter/material.dart';

import './Rep_ans.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int index_answer = 0;
  int index_question = 0;

  Widget build(BuildContext context) {
    var question = [
      'What is your favourite animal? ',
      'Whom do love a lot Father or Mother ?'
    ];

    var answers = ['Your answer will be displayed Here :)', 'Dog', "Father"];
    dynamic _replayanswer(int x) {
      index_answer = x;
    }

    void _replayquestion() {
      setState(() {
        index_question++;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Seventh App'),
        ),
        body: Column(
          children: [
            // Questions(question[index_question]),
            Text(question[0]),
            DynamicAnswer(answers[index_answer], index_answer),
            RaisedButton(
              child: Text("Dog"),
              onPressed: _replayanswer(1), //_replayquestion,
            ),
            RaisedButton(
              child: Text("Father"),
              onPressed: _replayanswer(0), //_replayquestion,
            ),
            //DynamicAnswer(answers[index_answer]),
          ],
        ),
      ),
    );
  }
}
