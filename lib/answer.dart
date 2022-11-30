import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answerHandler;
  final answer;

  const Answer(this.answer, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => answerHandler(answer['score']),
        child: Text(answer['text']),
      ),
    );
  }
}
