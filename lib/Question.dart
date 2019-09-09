import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 90.0, bottom: 20.0),
        padding: EdgeInsets.only(right: 10.0, left: 10.0),
        height: 150.0,
        color: Colors.transparent,
        child: Container(
            decoration: BoxDecoration(

              border: Border.all(
                color: Colors.blue[400],
                style: BorderStyle.solid,
                width: 10.0,
              ),
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    questionText,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )));
  }
}
