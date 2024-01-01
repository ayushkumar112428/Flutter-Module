import 'package:flutter/material.dart';

class Screen02 extends StatelessWidget {
  const Screen02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/bkimage.jpg"),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Oeschinen Lake Campground",style: TextStyle(color: Colors.black),),
                  Text("Kandersteg, Switzerland",style: TextStyle(color: Colors.black26),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star_rate,color: Colors.red,),
                  Text("41",style: TextStyle(fontSize: 18),)
                ],
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.call,color: Colors.blue,),
                    Text("CALL",style: TextStyle(color: Colors.blue),),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share,color: Colors.blue,),
                    Text("ROUTE",style: TextStyle(color: Colors.blue),),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share,color: Colors.blue,),
                    Text("SHAR",style: TextStyle(color: Colors.blue),),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text("Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondolaride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run."),
          ),
        ],
      ),
    );
  }
}