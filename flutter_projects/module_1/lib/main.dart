import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      'answers': [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 3},
        {"text": "Green", "score": 1},
        {"text": "Blue", "score": 4},
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      'answers': [
        {"text": "Rabbit", "score": 1},
        {"text": "Lion", "score": 5},
        {"text": "Elephant", "score": 15},
        {"text": "Snake", "score": 4},
      ],
    },
    {
      "questionText": "Who's your favorite instructor?",
      'answers': [
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
      ],
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
      setState(() {
        _questionIndex++;});
  }

  void _retry() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questionIndex: _questionIndex,
                  selectHandler: _answerQuestion,
                  questions: _questions)
              : Column(
                children: <Widget>[
                  Result(_totalScore),
                  RaisedButton(
                    child: Text("Retry"),
                    onPressed: _retry,),
                ],
              )),
    );
  }
}
