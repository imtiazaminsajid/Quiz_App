import 'package:flutter/material.dart';

import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz(){

    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });


  }

  final _questions = const [
    {
      'questionText': 'What is your favorite Color?',
      'answers': [{'text': 'Black', 'score': 10}, {'text': 'Red', 'score': 20}, {'text': 'Green', 'score': 30}, {'text': 'White', 'score': 40}]
    },
    {
      'questionText': 'What is your favorite Animal?',
      'answers': [{'text': 'Ox', 'score': 10}, {'text': 'Goat', 'score': 20}, {'text': 'Cow', 'score': 30}, {'text': 'Tiger', 'score': 40}]
    },
    {
      'questionText': 'What is your favorite Actor?',
      'answers': [{'text': 'Imtiaz', 'score': 10}, {'text': 'Amin', 'score': 20}, {'text': 'Sajid', 'score': 30}, {'text': 'All of Avobe', 'score': 40}]
    },
    {
      'questionText': 'What is your favorite District?',
      'answers': [{'text': 'Noakhali', 'score': 10}, {'text': 'And Noakhali', 'score': 20}, {'text': 'Or Noakhali', 'score': 30}, {'text': 'All of Avobe', 'score': 40}]
    }
  ];


  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('We habe more qus');
    } else {
      print('No more qus');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
