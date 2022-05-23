import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final String _question;
  final List<Map<String, dynamic>> _answers;
  final void Function(int) _handler; // 매개변수 포함 콜백함수 선언

  const Quiz(this._question, this._answers, this._handler, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // Text 위젯을 Container로 감싸 전체폭 지정하면
          // 아래에 오는 위젯들도 다 전체폭
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text(_question,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              )),
        ),
        // ... 스프레드 연산자는 컬렉션을 펼쳐서 다른 컬렉션 안에 컬렉션 삽입
        // as List 형변환
        // map() 메소드는 배열에서 원소 하나씩 가져와 처리 후 Iterable 반환
        // .toList() map(), where() 같은 메소드는 Iterable 반환하기 때문
        // 람다함수로 이벤트핸들러 정의 (매개변수 전달 가능)
        // 문자열 배열을 Text() 또는 ElevatedButton() 배열로 만들기 편하다.
        ..._answers.map((e) {
          return ElevatedButton(
            onPressed: () => _handler(e['score']),
            child: Text(e['text']),
          );
        }).toList(),
      ],
    );
  }
}
