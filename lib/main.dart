import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  //connecting generic class with statful class
  @override
  State<StatefulWidget> createState() {
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
    const questions = [
      {
        'questionText': 'What is your favorite color ?',
        'answers': ['blue', 'green', 'orange', 'red'],
      },
      {
        'questionText': 'What is your favorite food ?',
        'answers': ['fish', 'chips', 'meat', 'rice'],
      },
      {
        'questionText': 'What is your favorite football star ?',
        'answers': [
          'Ronaldo',
          'Messi',
          'Lewandowski',
          'Mbape',
          'Neymar',
          'Haland'
        ],
      },
      {
        'questionText': 'What is your favorite pet ?',
        'answers': ['Cat', 'Dog', 'Corocodile', 'Snake'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 54, 32, 65),
          title: Text(
            'SKILLGAIN',
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(
              questions[_quetionIndex]['questionText'] as String,
            ),
            ...(questions[_quetionIndex]['answers'] as List<String>).map(
              (answer) {
                return Answer(_answerQuestion, answer);
              },
            ).toList()
          ],
        ),
      ),
    );
  }
}
