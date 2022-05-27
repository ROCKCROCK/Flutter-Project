// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './textcontrol.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  final _text = [
    'you are beautiful',
    'you are great',
    'you are awesome',
  ];
  var _textcount = 0;

  void changeText() {
    setState(() {
      _textcount = (_textcount + 1) % _text.length;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
        ),
        body: TextControl(
          textchange: changeText,
          textcount: _textcount,
          textstring: _text,
        ),
      ),
    );
  }
}
