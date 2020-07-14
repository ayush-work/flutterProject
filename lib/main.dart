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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['what\'s your name  ', 'what\'s your last name'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hey'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[_questionIndex]),
          Answer(),
          Answer(),
          Answer(),
        ],
      ),
    ));
  }
}
