import 'package:flutter/material.dart';

// 람다식 함수 호출
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
          const Text('the question'),
          ElevatedButton(
            // 이벤트 핸들러로 함수 이름만 써서 함수 포인터로 전달
            // 함수의 이름만 전달해두고 실제로 이벤트가 발생할 때 호출되도록 함
            onPressed: answerQuestion,
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            // 이벤트 핸들러로 한 줄 화살표 함수 호출
            onPressed: () => print('Answer 2 chosen!'),
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            // 이벤트 핸들러로 익명함수 정의
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
