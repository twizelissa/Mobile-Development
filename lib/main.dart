import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';
import 'quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText':
          'Which number should come next in the pattern? 37, 34, 31, 28',
      'answers': [
        {'text': '23', 'score': 0},
        {'text': '40', 'score': 0},
        {'text': '25', 'score': 20},
        {'text': '20', 'score': 0}
      ],
    },
    {
      'questionText':
          'Find the answer that best completes the analogy?, Book is to Reading as Fork is to:',
      'answers': [
        {'text': 'drawing', 'score': 0},
        {'text': 'writing', 'score': 0},
        {'text': 'stirring', 'score': 0},
        {'text': 'eating', 'score': 20}
      ],
    },
    {
      'questionText': 'What number best completes the analogy? :8:4 as 10:',
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '7', 'score': 0},
        {'text': '24', 'score': 0},
        {'text': '5', 'score': 20},
        {'text': '10', 'score': 0},
        {'text': '4', 'score': 0}
      ],
    },
    {
      'questionText':
          'Which of the following can be arranged into a 5-letter English word?',
      'answers': [
        {'text': 'H R G S T', 'score': 0},
        {'text': 'R I L S A', 'score': 20},
        {'text': 'T O O M T', 'score': 20},
        {'text': ' W Q R G S', 'score': 0}
      ],
    },
    {
      'questionText':
          'Find two words, one from each group, that are the closest in meaning: Group A[talkative, job, ecstatic] Group B[angry, wind, loquacious]',
      'answers': [
        {'text': 'talkative and wind', 'score': 0},
        {'text': 'job and angry', 'score': 0},
        {'text': 'talkative and loquacious', 'score': 20},
        {'text': 'ecstatic and angry', 'score': 0}
      ],
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
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
          backgroundColor: Color.fromARGB(255, 77, 157, 248),
          title: const Text(
            'IQ TESTER',
          ),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(),
      ),
    );
  }
}
