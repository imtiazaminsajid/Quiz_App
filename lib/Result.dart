import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 80) {
      resultText = 'You are awesome and cool';
    } else if (resultScore <= 150) {
      resultText = 'You are very Smart dude!';
    } else if (resultScore <= 200) {
      resultText = 'You are a rich mind people';
    } else {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 190.0),
          padding: EdgeInsets.only(right: 10.0, left: 10.0),
          height: 150.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                style: BorderStyle.solid,
                width: 5.0,
              ),
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                resultPhrase,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 18.0),
            ),
            onPressed: resetHandler,
          ),
        )
      ],
    );
  }
}

//  @override
//  Widget build(BuildContext context) {
//    return Center(
//        child: Column(
//      children: <Widget>[
//
//        Text(
//          resultPhrase,
//          style: TextStyle(
//            fontSize: 35.0,
//            color: Colors.red,
//          ),
//          textAlign: TextAlign.center,
//        ),
//        FlatButton(
//          child: Text(
//            'Restart Quiz',
//            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
//          ),
//          onPressed: resetHandler,
//        )
//      ],
//    ));
//  }
