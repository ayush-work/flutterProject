import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Red', 'Score': 10},
        {'text': 'Black', 'Score': 5},
        {'text': 'White', 'Score': 3},
        {'text': 'Blue', 'Score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Dog', 'Score': 10},
        {'text': 'Cat', 'Score': 5},
        {'text': 'Lion', 'Score': 3},
        {'text': 'Tiger', 'Score': 1},
      ],
    }
  ];
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);

      if (_questionIndex < _questions.length) {
        print('we have more questions left');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Hey'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz)));
  }
}
