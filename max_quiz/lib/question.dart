import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final 변수로 인스턴스 생성 시 초기화된 값은 바뀌지 않음
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
