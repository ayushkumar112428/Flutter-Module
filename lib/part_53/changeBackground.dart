import 'package:flutter/material.dart';

class ChangeBackground extends StatefulWidget {
  const ChangeBackground({super.key});

  @override
  State<ChangeBackground> createState() => _ChangeBackgroundState();
}

class _ChangeBackgroundState extends State<ChangeBackground> {
  bool backgroundColors = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          backgroundColors == true ? Colors.amber : Colors.deepOrange,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                if(backgroundColors){
                  backgroundColors = false;
                }else{
                  backgroundColors = true;
                }
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black; // Color when button is pressed
                  }
                  return Colors.blue; // Default color
                },
              ),
              elevation: MaterialStateProperty.all<double?>(4.0),
            ),
            child: const Text(
              "Click",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
      ),
    );
  }
}
