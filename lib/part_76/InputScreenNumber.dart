import 'package:flutter/material.dart';
import 'package:model_3_49/part_76/OutputOfSum.dart';

class InputScreenNumber extends StatelessWidget {
  const InputScreenNumber({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNo = TextEditingController();
    TextEditingController secondNo = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Input Two No"),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: firstNo,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                labelText: "First Number",
                hintText: "Enter a number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: secondNo,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                labelText: "Second Number",
                hintText: "Enter a number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              int num1 = int.tryParse(firstNo.text)??0;
              int num2 = int.tryParse(secondNo.text)??0;
              int sum = num1 + num2;
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OutPutOfSum(sum: sum)));
            }, child: const Center(child: Text("Sum"),))
          ],
        ),
      ),
    );
  }
}
