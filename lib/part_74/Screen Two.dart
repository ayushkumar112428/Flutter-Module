import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Screen Two"),),
      ),
      body: Center(
        child: SizedBox(
          height: 50,width: 150,
          child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Center(child: Text("Go First Screen"),),
          ),
        ),
      ),
    );
  }
}
