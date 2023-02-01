import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    // allows the change to be shown in app.
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  // maps the questions and answers
  var questions = [
    {
      'questionText': 'whats your favourite colour?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'what is your favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'who is your favourite instructor?',
      'answers': ['Max', 'Max1', 'MAX', 'MAX1']
    }
  ];
  @override
  //defines the main widget pages by returning the widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            //Question
            //passing a function into a widget (callback)
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
