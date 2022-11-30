// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_complete/quiz.dart';
import 'package:flutter_complete/result.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'question': 'What\'s your favourite series charactor?',
      'answers': [
        {'text': 'Thomas Shelby', 'score': 5},
        {'text': 'Ragnar lothbrok', 'score': 8},
        {'text': 'Walter white', 'score': 7}
      ]
    },
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 7},
        {'text': 'Purple', 'score': 8}
      ]
    },
    {
      'question': 'What\'s your age?',
      'answers': [
        {'text': '18-30', 'score': 8},
        {'text': '30-50', 'score': 6},
        {'text': '50-60', 'score': 5}
      ]
    },
  ];

  var _idx = 0;
  var _score = 0;

  void _answerHandler(int score) {
    _score += score;
    print(_score);
    setState(() => _idx++);
  }

  void _restartQuiz() {
    _score = 0;
    setState(() => _idx = 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Header"),
        ),
        body: _idx < _questions.length
            ? Quiz(_questions, _answerHandler, _idx)
            : Result(_restartQuiz, _score),
      ),
    );
  }
}
