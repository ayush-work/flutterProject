import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  // getter
  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'Need improvement. Your Score is ' + resultScore.toString();
    } else if (resultScore <= 12) {
      resultText = 'Pretty decent. Your Score is ' + resultScore.toString();
    } else {
      resultText = 'You are a champ. Your Score is ' + resultScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
              child: Text('Restart quiz'),
              textColor: Colors.blue,
              onPressed: resetHandler),
        ],
      ),
    );
  }
}
