import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is first screen'),
            ElevatedButton(
              onPressed: () {
                // 두 번째 페이지로 이동, 생성자를 통한 데이터 전달
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const SecondScreen('Data from First Screen'),
                ));
              },
              child: const Text('Go to second screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String screenData;
  const SecondScreen(this.screenData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(screenData),
            OutlinedButton(
              onPressed: () {
                // 첫 번째 페이지로 돌아가기
                Navigator.of(context).pop();
              },
              child: const Text('Go back to first screen'),
            ),
          ],
        ),
      ),
    );
  }
}
