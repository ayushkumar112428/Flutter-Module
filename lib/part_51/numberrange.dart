import 'package:flutter/material.dart';

class NumberRangScreen extends StatelessWidget {
  final int firstNumber;
  final int secondNumber;
  const NumberRangScreen({super.key, required this.firstNumber, required this.secondNumber});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [];
    if(firstNumber<=secondNumber){
      for(int i = firstNumber;i<=secondNumber;i++){
        numbers.add(i);
      }
    }else{
      for(int i = secondNumber;i<=firstNumber;i++){
        numbers.add(i);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Rang of number"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Numbers between $firstNumber and $secondNumber:",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            const SizedBox(height: 10,),
            Text(numbers.join(", "),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }
}