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

  void playAgain() {
    setState(() {
      _curr = 0;
      totalScore = 0;
    });
  }

  void _checkAnswer(String optionSelected, int currQuestionIndex) {
    var currentQuestion = questions[currQuestionIndex];
    var answerIndex = currentQuestion["answerIndex"];
    var options = currentQuestion["options"];
    if ((options as List<String>)[answerIndex] == optionSelected) {
      totalScore++;
    }
    setState(() {
      _curr = _curr + 1;
    });
  }

  void handleNext() {
    setState(() {
      _curr = _curr + 1;
    });
  }

  void handleBack() {
    setState(() {
      _curr = _curr - 1;
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
        body: Column(children: [
          (_curr < questions.length ? Quiz(questions: questions, currQuestionIndex: _curr, checkAnswer: _checkAnswer) : Result(score: totalScore, playAgain: playAgain)),
          (Row(children: [
            Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10,
              runSpacing: 10,
              children: [
                (() {
                  if (_curr == 0) {
                    return Container(child: ElevatedButton(child: Text("Next"), onPressed: handleNext));
                  } else if (_curr > 0 && _curr < questions.length - 1) {
                    return Row(
                      children: [
                        Container(child: ElevatedButton(child: Text("Back"), onPressed: handleBack)),
                        Container(child: ElevatedButton(child: Text("Next"), onPressed: handleNext))
                      ],
                    );
                  } else if (_curr == (questions.length - 1)) {
                    return Container(child: ElevatedButton(child: Text("Back"), onPressed: handleBack));
                  } else {
                    return Container(child: Text(""));
                  }
                }())
                // (_curr != 0) ? ElevatedButton(child: Text("Back"), onPressed: () => print("back")) : ElevatedButton(child: Text("Next"), onPressed: () => print("next"))
              ],
            ),
          ]))
        ]),
      ),
    );
  }
}
