import 'package:flutter/material.dart';
class SeekBarColorChange extends StatefulWidget {
  const SeekBarColorChange({super.key});

  @override
  _SeekBarColorChangeState createState() => _SeekBarColorChangeState();
}

class _SeekBarColorChangeState extends State<SeekBarColorChange> {
  double redValue = 0.0;
  double greenValue = 0.0;
  double blueValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(
        redValue.toInt(),
        greenValue.toInt(),
        blueValue.toInt(),
        1.0,
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Center(child: Text('Seekbar Color Change')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            const Text("Color Preview",style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),),
            // Container(
            //   color: Color.fromRGBO(
            //     redValue.toInt(),
            //     greenValue.toInt(),
            //     blueValue.toInt(),
            //     1.0,
            //   ),
            //   height: 250,
            //   width: double.infinity,
            //   child: const Center(
            //     child: Text(
            //       'Color Preview',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 28.0,
            //         fontWeight: FontWeight.bold,
            //         letterSpacing: 1.5,
            //       ),
            //     ),
            //   ),
            // ),
            const Spacer(),
            Slider(
              value: redValue,
              onChanged: (newValue) {
                setState(() {
                  redValue = newValue;
                });
              },
              min: 0,
              max: 255,
              divisions: 255,
              label: 'Red: ${redValue.toInt()}',
              thumbColor: Colors.red,
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
            ),
            Slider(
              value: greenValue,
              onChanged: (newValue) {
                setState(() {
                  greenValue = newValue;
                });
              },
              min: 0,
              max: 255,
              divisions: 255,
              label: 'Green: ${greenValue.toInt()}',
              thumbColor: Colors.green,
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
            ),
            Slider(
              value: blueValue,
              onChanged: (newValue) {
                setState(() {
                  blueValue = newValue;
                });
              },
              min: 0,
              max: 255,
              divisions: 255,
              label: 'Blue: ${blueValue.toInt()}',
              thumbColor: Colors.blue,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}