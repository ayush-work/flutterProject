import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': ['Red', 'Black', 'White', 'Blue'],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Dog', 'Cat', 'Rabbit', 'Lion'],
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);

      if (_questionIndex < questions.length) {
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
      body: Column(
        children: <Widget>[
          Question(questions[_questionIndex]['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
