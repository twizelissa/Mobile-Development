import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

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
        child: Column(
      children: [
        Text(
          resultPhase,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'Restart Test',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
