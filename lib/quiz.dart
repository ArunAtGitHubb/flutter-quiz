import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions, answerHandler, idx;
  Quiz(this.questions, this.answerHandler, this.idx);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[idx]['question']),
        ...(questions[idx]['answers'] as List).map(
          (answer) {
            return Answer(answer, answerHandler);
          },
        ),
      ],
    );
  }
}
