import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhase {
    var resultText;
    if (resultScore >= 80) {
      resultText = 'You are Genius';
    } else if (resultScore < 80 && resultScore > 50) {
      resultText = 'Good,You did you best';
    } else {
      resultText = 'Don\'t worry the life doen\'t end here';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      resultPhase,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ));
  }
}
