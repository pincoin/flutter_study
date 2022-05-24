import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double _height;
  final double _weight;

  const ResultScreen(this._height, this._weight, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bmi = _weight / ((_height / 100) * (_height / 100));
    var message = 'Underweight';
    var icon = const Icon(
      Icons.sentiment_dissatisfied,
      color: Colors.orange,
      size: 100,
    );

    if (bmi > 25) {
      message = 'Obesity!';
      icon = const Icon(
        Icons.sentiment_very_dissatisfied,
        color: Colors.red,
        size: 100,
      );
    } else if (bmi > 23) {
      message = 'Overweight';
      icon = const Icon(
        Icons.sentiment_neutral,
        color: Colors.orange,
        size: 100,
      );
    } else if (bmi > 18.5) {
      message = 'Healthy Weight';
      icon = const Icon(
        Icons.sentiment_very_satisfied,
        color: Colors.green,
        size: 100,
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('My BMI')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            icon,
          ],
        ),
      ),
    );
  }
}
