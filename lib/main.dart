import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';
import 'quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText':
          'Which number should come next in the pattern? 37, 34, 31, 28',
      'answers': ['23', '40', '25', '20'],
    },
    {
      'questionText':
          'Find the answer that best completes the analogy?, Book is to Reading as Fork is to:',
      'answers': ['drawing', 'writing', 'stirring', 'eating'],
    },
    {
      'questionText': 'What number best completes the analogy? :8:4 as 10:',
      'answers': ['3', '7', '24', '5', '10', '4'],
    },
    {
      'questionText':
          'Which of the following can be arranged into a 5-letter English word?',
      'answers': ['H R G S T', 'R I L S A', 'T O O M T', ' W Q R G S'],
    },
    {
      'questionText':
          'Find two words, one from each group, that are the closest in meaning: Group A[talkative, job, ecstatic] Group B[angry, wind, loquacious]',
      'answers': [
        'talkative and wind',
        'job and angry',
        'talkative and loquacious',
        ' ecstatic and angry'
      ],
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
