import 'package:flutter/material.dart';

class OutPutOfSum extends StatelessWidget {
  final int sum;
  const OutPutOfSum({super.key, required this.sum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("OutPut"),),
      ),
      body: Center(
        child: Text("Two Number Sum is $sum"),
      ),
    );
  }
}
