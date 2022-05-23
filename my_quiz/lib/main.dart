import 'package:flutter/material.dart';

import './screens/home_screen.dart';

// 람다함수 형식으로 진입점함수 main() 호출
// MyApp() 인스턴스는 const 상수
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Quiz',
      home: HomeScreen(),
    );
  }
}
