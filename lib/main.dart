import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  final questions = const [
    {
      'questionText': 'What is your favorite Color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },

    {
      'questionText': 'What is your favorite Animal?',
      'answers': ['Ox', 'Goat', 'Cow', 'Hen']
    },

    {
      'questionText': 'What is your favorite Actor?',
      'answers': ['Imtiaz', 'Amin', 'Sajid', 'All of avobe']
    },

    {
      'questionText': 'What is your favorite District?',
      'answers': ['Noakhali', 'Noakhali', 'Noakhali', 'All of Avobe']
    }

  ];

  void answerQuestion(){

    setState(() {
      questionIndex = questionIndex + 1;
    });

    if(questionIndex < questions.length){
      print('We habe more qus');
    } else{
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
        body: questionIndex < questions.length ?
        Column(
          children: [
            Question(
                questions[questionIndex]['questionText']
            ),

            ...(questions[questionIndex]['answers'] as List<String>).map((answer){
              return Answer(answerQuestion, answer);
            }).toList()

          ],
        ) : Center(
        child: Text('You did it')) ,
      ),
    );
  }
}
