import 'package:flutter/material.dart';

// 람다식 함수 호출
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 루트 위젯은 MaterialApp 또는 CupertinoApp 인스턴스 반환
    return const MaterialApp(
      home: Text('Hello'),
    );
  }
}
