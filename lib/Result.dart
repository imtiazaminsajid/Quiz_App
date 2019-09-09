import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 80) {
      resultText = 'You are awesome and cool';
    } else if (resultScore <= 100) {
      resultText = 'You are very Smart dude!';
    } else if (resultScore <= 120) {
      resultText = 'You are a rich mind people';
    } else {
      resultText = 'You are so bad!';
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
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.red,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'Restart Quiz',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
