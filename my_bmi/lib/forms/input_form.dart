import 'package:flutter/material.dart';

import '../screens/result_screen.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _formKey = GlobalKey<FormState>();

  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  void dispose() {
    // 다 쓴 컨트롤러는 화면 종료할 때 반드시 해제한다.
    _heightController.dispose();
    _weightController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // 폼 접근을 위한 Key 값
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Height',
              border: OutlineInputBorder(),
              hintText: 'cm',
            ),
            keyboardType: TextInputType.number,
            controller: _heightController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your height';
              }

              try {
                double.parse(_heightController.text.trim());
              } catch (e) {
                return 'Please enter valid number';
              }

              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Weight',
              border: OutlineInputBorder(),
              hintText: 'kg',
            ),
            keyboardType: TextInputType.number,
            controller: _weightController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your weight';
              }

              try {
                double.parse(_weightController.text.trim());
              } catch (e) {
                return 'Please enter valid number';
              }

              return null;
            },
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // 폼 검증
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    double.parse(_heightController.text.trim()),
                    double.parse(_weightController.text.trim()),
                  ),
                ));
              }
            },
            child: const Text('Submit'),
          ),
        ),
      ]),
    );
  }
}
