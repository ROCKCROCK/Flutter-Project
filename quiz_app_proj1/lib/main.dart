// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

// void main()=> runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _ques = const [
    {
      'quesText': 'What\'s Your Favorite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Red', 'score': 7},
        {'text': 'Pink', 'score': 5},
      ]
    },
    {
      'quesText': 'What\'s Your Favorite Animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 8},
        {'text': 'Horse', 'score': 7},
        {'text': 'Cow', 'score': 3},
      ]
    },
    {
      'quesText': 'What\'s Your Favorite Sport?',
      'answers': [
        {'text': 'Cricket', 'score': 8},
        {'text': 'Football', 'score': 7},
        {'text': 'Swimming', 'score': 9},
        {'text': 'Wrestling', 'score': 10},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQues(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _ques.length
            ? Quiz(
                answerQues: _answerQues,
                questionIndex: _questionIndex,
                ques: _ques,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
