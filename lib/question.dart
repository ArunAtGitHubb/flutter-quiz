import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final question;

  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        question,
        style: const TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
