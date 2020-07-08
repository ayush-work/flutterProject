import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
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
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('anonymous function 1'),
          ),
          RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('anonymous function 2');
              }),
        ],
      ),
    ));
  }
}
