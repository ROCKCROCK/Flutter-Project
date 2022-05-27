import 'package:flutter/material.dart';
import './text.dart';

class TextControl extends StatelessWidget {
  final VoidCallback textchange;
  final int textcount;
  final List<String> textstring;
  TextControl({
    required this.textchange,
    required this.textcount,
    required this.textstring,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        text(textstring[textcount]),
        RaisedButton(
          onPressed: textchange,
          child: Text('Change Sentence!!'),
        )
      ],
    );
  }
}
