// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  //connecting generic class with statful class
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyFirstAppState();
  }
}

//state is generic class
class MyFirstAppState extends State<MyFirstApp> {
  var quetionIndex = 0;
  void answerQuestion() {
    setState(() {
      quetionIndex = quetionIndex + 1;
    });
    print(quetionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Do you love Reading',
      'Do you Believe Hard work paysoff',
      'What is your favorite food',
      'What do you do in your free time',
      'Do you care Improvement of other',
      'Did you sometime think that you fucked off',
      'If yes in previous question when'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'IQ TEST APP',
          ),
        ),
        body: Column(
          children: [
            Text(questions[quetionIndex]),
            RaisedButton(child: Text('Question 1'), onPressed: answerQuestion),
            RaisedButton(
                child: Text('Question 2'),
                onPressed: () => print('Question 2 answered')),
            RaisedButton(
              child: Text('Question 3'),
              onPressed: () {
                print("Question 3 answered");
              },
            ),
          ],
        ),
      ),
    );
  }
}
