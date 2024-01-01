import 'package:flutter/material.dart';

class TextSize extends StatefulWidget {
  const TextSize({super.key});

  @override
  State<TextSize> createState() => _TextSizeState();
}

class _TextSizeState extends State<TextSize> {
  double i = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Ayush",style: TextStyle(fontSize: i,fontWeight: FontWeight.w600,color: Colors.black,letterSpacing: 1.5),),
            // const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.black; // Color when button is pressed
                        }
                        return Colors.blue; // Default color
                      },
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      i = i+1;
                    });
                  },
                  child: const Text("+",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white,),
                ),),
                const SizedBox(width: 20,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.black; // Color when button is pressed
                        }
                        return Colors.blue; // Default color
                      },
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      i = i-1;
                    });
                  },
                  child: const Text("-",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white,),
                  ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
