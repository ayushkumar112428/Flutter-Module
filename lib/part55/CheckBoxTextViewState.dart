import 'package:flutter/material.dart';
class CheckBoxTextViewState extends StatefulWidget {
  const CheckBoxTextViewState({super.key});

  @override
  State<CheckBoxTextViewState> createState() => _CheckBoxTextViewStateState();
}

class _CheckBoxTextViewStateState extends State<CheckBoxTextViewState> {
  bool view = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: view,
              onChanged: (bool? value) {
                setState(() {
                  view = value ?? false;
                });
              },
            ),
            const SizedBox(height: 20.0),
            Visibility(
              visible: view,
              child: const Text(
                'TextView is Visible',
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
