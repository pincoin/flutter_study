import 'package:flutter/material.dart';
import '../question.dart';
import '../answer.dart';

// 람다식 함수 호출
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    // Stateful 위젯의 상태를 변경하고 그 값을 반영한다.
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['Max', 'Max', 'Max'],
      },
    ];

    // 루트 위젯은 MaterialApp 또는 CupertinoApp 인스턴스 반환
    return MaterialApp(
      // MaterialApp은 Scaffold 구조
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText'] as String),

          // map() + toList() + 스프레드 연산자
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(answer, _answerQuestion);
          }).toList(),
        ]),
      ),
    );
  }
}
