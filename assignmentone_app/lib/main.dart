// import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';

import './text_file.dart';

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
  int index = 0;
  var text = ['Tamilarasan', 'Tamilselvan', 'Siva', 'Murugesan'];
  // var col = ['red', 'blue', 'green', 'black'];
  void textbodycall() {
    setState(() {
      index++;
      if (index >= text.length) {
        index = 0;
      }
    });
  }

  //throw UnimplementedError();
  @override
  Widget build(BuildContext context) {
    // _questions = [];
    //var newMethod2 = newMethod _questions[_questionIndex]["questiontext"]);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('First Assignment App :)',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Textbody(text[index]),
            RaisedButton(
              color: Colors.red,
              child: Text("Change Body text"),
              onPressed: textbodycall,
            ),
          ],
        ),
      ),
    );
  }
}
