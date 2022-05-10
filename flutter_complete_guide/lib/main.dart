import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  // This widget is the root of the application
  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'question': 'What\'s your favorite color?',
        'answer': ['Black', 'Red', 'Green', 'White']
      },
      {
        'question': 'What\'s your favorite animal?',
        'answer': ['Cat', 'Dog', 'Rabbit', 'Horse']
      },
      {
        'question': 'Who\'s your favorite instructor?',
        'answer': ['Saeed', 'Abdullah', 'Malik', 'Saif']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['question'].toString()),
          ...(questions[_questionIndex]['answer'] as List<String>)
              .map((e) => Answer(_answerQuestion, e)).toList()
        ]),
      ),
    );
  }
}
