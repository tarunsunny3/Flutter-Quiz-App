import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var totalScore = 0;
  final questions = const [
    {
      "question": "What is the capital city of India?",
      "options": [
        "Hyderabad",
        "Bangalore",
        "New Delhi",
        "Mumbai"
      ],
      "answerIndex": 2
    },
    {
      "question": "What's the India's National Animal?",
      "options": [
        "Zebra",
        "Peacock",
        "Tiger",
        "Lion"
      ],
      "answerIndex": 2
    },
    {
      "question": "What's the currency of India?",
      "options": [
        "Dollar",
        "Rupee",
        "Pound",
        "Euro"
      ],
      "answerIndex": 1
    },
  ];
  int _curr = 0;
  void _checkAnswer() {
    setState(() {
      _curr = _curr + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _curr < questions.length ? Quiz(questions: questions, currQuestionIndex: _curr, checkAnswer: _checkAnswer) : Result(),
      ),
    );
  }
}
