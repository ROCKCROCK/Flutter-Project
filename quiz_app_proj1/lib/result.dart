// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get ResultString {
    String returnText;
    if (resultScore <= 15) {
      returnText = 'You are Dumb';
    } else if (resultScore <= 20) {
      returnText = 'You are OKOK';
    } else if (resultScore <= 25) {
      returnText = 'You are Good';
    } else {
      returnText = 'You are Awesome';
    }
    return returnText;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            ResultString,
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.blue[600],
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Click Here To Reset',
            ),
            textColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
