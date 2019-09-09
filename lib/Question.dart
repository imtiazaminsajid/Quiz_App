import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 50.0, bottom: 20.0),
      child: Text(
        questionText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
        ),
        textAlign: TextAlign.center,
      ),
    );

  }
}
