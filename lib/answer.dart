import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        child: Text('Question 1'),
        onPressed: null,
      ),
    );
  }
}
