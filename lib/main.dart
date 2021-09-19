import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _curr = 0;
  void checkAnswer() {
    print(_curr);
    setState(() {
      _curr = _curr + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your name",
      "What's your favorite color?",
      "What's favorite hobby?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_curr]),
            ElevatedButton(child: Text('Answer 1'), onPressed: checkAnswer),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: checkAnswer,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: checkAnswer,
            ),
          ],
        ),
      ),
    );
  }
}
