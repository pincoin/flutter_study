import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final void Function() handler;

  const Answer(this.answerText, this.handler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        // 이벤트 핸들러로 함수 이름만 써서 함수 포인터로 전달
        // 함수의 이름만 전달해두고 실제로 이벤트가 발생할 때 호출되도록 함
        onPressed: handler,
        child: Text(answerText),
      ),
    );
  }
}
