import 'package:flutter/material.dart';

class SelectRadioButton extends StatefulWidget {
  const SelectRadioButton({super.key});

  @override
  State<SelectRadioButton> createState() => _SelectRadioButtonState();
}

class _SelectRadioButtonState extends State<SelectRadioButton> {
  final TextEditingController _firstNumber = TextEditingController();
  final TextEditingController _secondNumber = TextEditingController();
  double result = 0;
  String operation = "";

   void calculateResult() {
    double num1 = double.tryParse(_firstNumber.text) ?? 0;
    double num2 = double.tryParse(_secondNumber.text) ?? 0;

    setState(() {
      switch (operation) {
        case 'Add':
          result = num1 + num2;
          break;
        case 'Subtraction':
          result = num1 - num2;
          break;
        case 'Multiply':
          result = num1 * num2;
          break;
        case 'Division':
          if (num2 != 0) {
            result = num1 / num2;
          } else {
            result = 0; // Handle division by zero error
          }
          break;
        default:
          result = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color.fromARGB(255, 24, 41, 54),
        title: const Center(
            child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Calculator",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: TextField(
                controller: _firstNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter the First Number",
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  floatingLabelStyle: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: TextField(
                controller: _secondNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter the Second Number",
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  floatingLabelStyle: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              "Select operation",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 'Add',
                        groupValue: operation,
                        onChanged: (value) {
                          setState(() {
                            operation = value.toString();
                          });
                        },
                      ),
                      const Text(
                        'Add',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 'Subtraction',
                            groupValue: operation,
                            onChanged: (value) {
                              setState(() {
                                operation = value.toString();
                              });
                            },
                          ),
                          const Text('Subtract',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'Multiply',
                        groupValue: operation,
                        onChanged: (value) {
                          setState(() {
                            operation = value.toString();
                          });
                        },
                      ),
                      const Text('Multiply',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'Division',
                        groupValue: operation,
                        onChanged: (value) {
                          setState(() {
                            operation = value.toString();
                          });
                        },
                      ),
                      const Text('Divide',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculateResult();
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),
            Text(
              'Result: $result',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
