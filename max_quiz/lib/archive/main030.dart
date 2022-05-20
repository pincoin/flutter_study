import 'package:flutter/material.dart';

// 람다식 함수 호출
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
            onPressed: () => {},
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () => {},
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () => {},
            child: const Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
