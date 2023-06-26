import 'package:flutter/material.dart';
import 'package:quiz_project/question.dart';

import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

  void _answer() {
    print('Chosen answer');

    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        "question": "What's your favourite color?",
        'answers': ["Black", "Blue", "White"]
      },
      {
        "question": "What's your favourite animal?",
        'answers': ["Cat", "Lion", "Wolf"]
      },
      {
        "question": "Who's your favorite person?",
        'answers': ["Abdullah", "Shadow", "The universe"]
      },
    ];

    var dummy = const ['Hello'];
    dummy.add('Mac');
    print(dummy);
    dummy =[];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Center(
          child: Column(
            children: [
              Question(
                question: _questions[_count]["question"].toString(),
              ),
              SizedBox(
                height: 20.0,
              ),
              ...(_questions[_count]['answers'] as List<String>).map((answer) {
                return Answer(selectedAnswer: _answer, answer: answer); //check the explanation for this
              }).toList(),
              // Answer(selectedAnswer: _answer),
              // SizedBox(
              //   height: 20.0,
              // ),
              // Answer(selectedAnswer: _answer),
              // SizedBox(
              //   height: 20.0,
              // ),
              // Answer(selectedAnswer: _answer),
            ],
          ),
        ),
      ),
    );
  }
}
