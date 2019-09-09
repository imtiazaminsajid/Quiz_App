import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 20.0, left: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        height: 50.0,
        color: Colors.transparent,
        child: InkWell(
          onTap: selectHandler,
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      answerText,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
