import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  //connecting generic class with statful class
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

//state is generic class
//_MyFirstAppState the reason for underscore is to  make it private
class _MyFirstAppState extends State<MyFirstApp> {
  final questions = const [
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

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 54, 32, 65),
          title: const Text(
            'SKILLGAIN',
          ),
          centerTitle: true,
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>).map(
                    (answer) {
                      return Answer(_answerQuestion, answer);
                    },
                  ).toList()
                ],
              )
            : Text('Done! You Ginious'),
      ),
    );
  }
}
