import "package:flutter/material.dart";
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  final List<Map<String, Object>> questions;
  final Function answerquestion;
  final int questionIndex;

  Quiz(
    this.answerquestion,
    this.questions,
    this.questionIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          // Question function is imported from question.dart file
          questions[questionIndex]["questiontext"] as String,
          questionIndex,
        ),
        ...(questions[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerquestion(answer['score']),
            answer['text'] as String,
          );
        }).toList(),
      ],
    );
  }
}
