import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final 변수로 인스턴스 생성 시 초기화된 값은 바뀌지 않음
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Column과 Container 위젯 너비는
      // 화면 전체가 아닌 자식을 감쌀 수 있을 정도 만큼만 차지한다.
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      // 위젯의 배치 컨트롤위젯보다 레이아웃 위젯에서
      alignment: Alignment.center,
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        // 위젯의 배치는 컨트롤위젯보다 레이아웃 위젯에서
        // textAlign: TextAlign.center,
      ),
    );
  }
}
