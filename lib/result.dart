import 'package:flutter/material.dart';
import 'package:flutter_complete/question.dart';

class Result extends StatelessWidget {
  final restartQuiz;
  final int score;
  const Result(this.restartQuiz, this.score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Question("End of Quiz, your score is: $score"),
        ElevatedButton(
          onPressed: restartQuiz,
          child: Text("Restart Quizz"),
        )
      ]),
    );
  }
}
