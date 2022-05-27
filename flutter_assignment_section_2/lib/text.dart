import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String randomText;
  text(this.randomText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        randomText,
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
