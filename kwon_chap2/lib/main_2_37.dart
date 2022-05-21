import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Text> textList = [];

    for (var i = 0; i < 50; i++) {
      textList.add(const Text(
        'Hello, world',
        style: TextStyle(fontSize: 25),
      ));
    }

    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
        appBar: AppBar(title: const Text('List View Test')),
        body: Center(
          // ListView
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return Text('$index Text', style: const TextStyle(fontSize: 20));
            },
          ),
        ),
      ),
    );
  }
}
