import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  void answerQuestion() {
    print('Quetions answered');
  }

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
            RaisedButton(child: Text('Question 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Question 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Question 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
