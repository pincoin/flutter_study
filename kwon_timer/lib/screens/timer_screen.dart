import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

enum TimerStatus {
  running,
  paused,
  stopped,
  resting,
}

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  static const WORK_SECONDS = 25; // 작업시간 25초
  static const REST_SECONDS = 5; // 휴식시간 5초

  late TimerStatus _timerStatus; // 타이머 상태 상수
  late int _timer; // 작업시간/휴식시간 타이머 시간 값 (공유)
  late int _pomodoroCount; // 뽀모도로 개수

  void run() {
    setState(() {
      _timerStatus = TimerStatus.running;
      debugPrint(_timerStatus.toString());
      runTimer(); // 타이머 실행
    });
  }

  void rest() {
    setState(() {
      _timerStatus = TimerStatus.resting;
      debugPrint(_timerStatus.toString());
      _timer = REST_SECONDS;
    });
  }

  void pause() {
    setState(() {
      _timerStatus = TimerStatus.paused;
      debugPrint(_timerStatus.toString());
    });
  }

  void resume() {
    run();
  }

  void stop() {
    setState(() {
      _timerStatus = TimerStatus.stopped;
      debugPrint(_timerStatus.toString());
      _timer = WORK_SECONDS;
    });
  }

  void runTimer() async {
    Timer.periodic(const Duration(seconds: 1), (Timer t) {
      debugPrint(t.toString());
      switch (_timerStatus) {
        case TimerStatus.running:
          if (_timer <= 0) {
            debugPrint('done');
            rest();
          } else {
            setState(() {
              _timer += -1;
            });
          }
          break;

        case TimerStatus.resting:
          if (_timer <= 0) {
            setState(() {
              _pomodoroCount += 1;
            });
            t.cancel();
            stop(); // 타이머 종료
          } else {
            setState(() {
              _timer -= 1;
            });
          }
          break;

        case TimerStatus.paused:
        case TimerStatus.stopped:
          break;

        default: // do nothing
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();

    _timerStatus = TimerStatus.stopped;
    debugPrint(_timerStatus.toString());
    _timer = WORK_SECONDS;
    _pomodoroCount = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('뽀모도로 타이머'),
        backgroundColor:
            _timerStatus == TimerStatus.resting ? Colors.green : Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 중간에 Padding, SizedBox 쓰는 것보다 고려
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.1),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _timerStatus == TimerStatus.resting
                  ? Colors.green
                  : Colors.blue,
            ),
            child: Text(
              sprintf('%02d:%02d', [_timer ~/ 60, _timer % 60]),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _timerStatus == TimerStatus.resting
                ? []
                : _timerStatus == TimerStatus.stopped
                    ? [
                        ElevatedButton(
                          onPressed: run,
                          child: const Text('시작하기'),
                        ),
                      ]
                    : [
                        ElevatedButton(
                          onPressed: _timerStatus == TimerStatus.paused
                              ? resume
                              : pause,
                          child: _timerStatus == TimerStatus.paused
                              ? const Text('계속하기')
                              : const Text('일시정지'),
                        ),
                        ElevatedButton(
                          onPressed: stop,
                          child: const Text('포기하기'),
                        ),
                      ],
          )
        ],
      ),
    );
  }
}
