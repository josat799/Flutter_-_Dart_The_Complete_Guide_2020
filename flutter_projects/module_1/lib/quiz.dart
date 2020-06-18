import 'package:flutter/cupertino.dart';

import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function selectHandler;

  Quiz({@required this.questions, @required this.selectHandler, @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Question(questions[questionIndex]["questionText"]),
            ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
                .map((answer) {
              return Answer(() => selectHandler(answer["score"]), answer["text"]);
            }).toList(),
          ],
        )
    );
  }
}