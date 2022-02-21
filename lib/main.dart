import 'package:flutter/material.dart';
import './main.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  //connecting generic class with statful class
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFirstAppState();
  }
}

//state is generic class
//_MyFirstAppState the reason for underscore is to  make it private
class _MyFirstAppState extends State<MyFirstApp> {
  var _quetionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _quetionIndex = _quetionIndex + 1;
    });
    print(_quetionIndex);
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
            Text(
              questions[_quetionIndex],
            ),
            RaisedButton(child: Text('Question 1'), onPressed: _answerQuestion),
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
