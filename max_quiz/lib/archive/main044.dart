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
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    // 루트 위젯은 MaterialApp 또는 CupertinoApp 인스턴스 반환
    return MaterialApp(
      // MaterialApp은 Scaffold 구조
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          Answer('Answer 1', _answerQuestion),
          Answer('Answer 2', _answerQuestion),
          Answer('Answer 3', _answerQuestion),
        ]),
      ),
    );
  }
}
