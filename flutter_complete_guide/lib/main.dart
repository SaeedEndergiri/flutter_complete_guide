import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    print('Answer Chosen!');
  }

  // This widget is the root of the application
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter'),
        ),
        body: Column(children: [
          Text(questions[0]),
          ElevatedButton(
            onPressed: () => print('Answer 1 chosen!'),
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () => print('Answer 2 chosen!'),
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {
              print('Answer 3 chosen!');
            },
            child: const Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
