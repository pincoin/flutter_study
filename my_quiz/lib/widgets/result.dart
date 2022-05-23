import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final void Function() handler; // 매개변수 불포함 콜백함수 선언

  const Result(this.totalScore, this.handler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = 'Poor';

    // _totalScore 상태값은 상태 위젯에서 관리
    // 하지만 그 값을 읽어 위젯에 알맞게 출력하는 것은 위젯이 담당
    if (totalScore >= 40) {
      message = 'Excellent';
    } else if (totalScore >= 30) {
      message = 'Great';
    } else if (totalScore >= 20) {
      message = 'Good';
    } else if (totalScore >= 10) {
      message = 'Fair';
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.cyan,
          ),
          padding: const EdgeInsets.all(80),
          margin: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            message,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: handler, // 매개변수 없으므로 이벤트핸들러에 함수이름으로 전달
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
