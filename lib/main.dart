// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//alternative to

// void main() {
//   runApp(MyFirstApp());
// }

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s Your Favorite Food', 'What\'s Your blood DNA'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'NO BRAIN APP',
          ),
        ),
        body: Column(
          children: [
            Text('Questions!'),
            RaisedButton(child: Text('Question 1'), onPressed: null),
            RaisedButton(child: Text('Question 2'), onPressed: null),
            RaisedButton(child: Text('Question 3'), onPressed: null),
          ],
        ),
      ),
    );
  }
}
