// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class NumberReversalScreen extends StatefulWidget {
  const NumberReversalScreen({super.key});

  @override
  _NumberReversalScreenState createState() => _NumberReversalScreenState();
}

class _NumberReversalScreenState extends State<NumberReversalScreen> {
  final TextEditingController _inputController = TextEditingController();
  final TextEditingController _outputController = TextEditingController();

  void reverseNumber() {
    String inputText = _inputController.text;
    if (inputText.isNotEmpty) {
      String reversedText = inputText.split('').reversed.join();
      _outputController.text = reversedText;
    } else {
      _outputController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Reversal App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _inputController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter a number',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: reverseNumber,
              child: const Text('Reverse Number'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _outputController,
                enabled: false,
                decoration: const InputDecoration(
                  labelText: 'Reversed Number',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    _outputController.dispose();
    super.dispose();
  }
}
