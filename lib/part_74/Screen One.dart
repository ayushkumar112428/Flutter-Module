import 'package:flutter/material.dart';

import 'Screen Two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Screen One"),),
      ),
      body: Center(
        child: SizedBox(
          height: 50,width: 150,
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScreenTwo()));
            },
            child: const Center(child: Text("Next Screen"),),
          ),
        ),
      ),
    );
  }
}
