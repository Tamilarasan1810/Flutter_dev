import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String answer = '';
  void answerquestion() {
    print("Answer Selected");
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
            Text("The Question!!!"),
            RaisedButton(
              child: Text("Answer1"),
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text("Answer2"),
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text("Answer3"),
              onPressed: answerquestion,
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
