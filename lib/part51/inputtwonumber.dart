import 'package:flutter/material.dart';
import 'package:model_3_49/part51/numberrange.dart';

class InputTwoNumber extends StatelessWidget {
  const InputTwoNumber({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _firstNumber = TextEditingController();
    TextEditingController _secondNumber = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Number Range App"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _firstNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter the First Number",
                  labelStyle: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                  floatingLabelStyle: const TextStyle(color: Colors.blue,fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _secondNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter the Second Number",
                  labelStyle: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),
                  floatingLabelStyle: const TextStyle(color: Colors.blue,fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){
                int? firstNumber = int.tryParse(_firstNumber.text);
                int? secondNumber = int.tryParse(_secondNumber.text);
                // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> NumberRangScreen(firstNumber: firstNumber!, secondNumber: secondNumber!)));
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NumberRangScreen(firstNumber: firstNumber!, secondNumber: secondNumber!)));
              }, 
              child: const Text("Done",style: TextStyle(color: Colors.black,fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}
