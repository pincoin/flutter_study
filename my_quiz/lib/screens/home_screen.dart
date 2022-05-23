import 'package:flutter/material.dart';

import '../widgets/question.dart';
import '../widgets/result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // private 변수
  final _questions = [
    {
      'text': ' 1 + 1 = ',
      'answers': [
        {'text': '0', 'score': 0},
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 10},
        {'text': '3', 'score': 0},
      ],
    },
    {
      'text': ' 1 - 1 = ',
      'answers': [
        {'text': '0', 'score': 10},
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 0},
      ],
    },
    {
      'text': ' 1 * 1 = ',
      'answers': [
        {'text': '0', 'score': 0},
        {'text': '1', 'score': 10},
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 0},
      ],
    },
    {
      'text': ' 1 % 1 = ',
      'answers': [
        {'text': '0', 'score': 10},
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  // 콜백함수: 다음 질문으로
  void _answer(int score) {
    // 총점 상태 변경 그러나 위젯 화면 업데이트 안 함
    _totalScore += score;

    // 질문 인덱스는 변경 후 위젯 화면 업데이트
    setState(() {
      _questionIndex += 1;
    });
  }

  // 콜백함수: 질문 초기화
  void _reset() {
    _totalScore = 0;

    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Quiz')),
      body: _questionIndex < _questions.length
          ? Question(
              _questions[_questionIndex]['text'] as String,
              _questions[_questionIndex]['answers']
                  as List<Map<String, dynamic>>,
              _answer,
            )
          : Result(_totalScore, _reset), // 삼항연산자 - 페이지변경효과
    );
  }
}
