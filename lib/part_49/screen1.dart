import 'package:flutter/material.dart';

class Screen01 extends StatelessWidget {
  const Screen01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      height: 170,
                      width: MediaQuery.of(context).size.width*0.48,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 5,),
                    Container(
                      height: 170,
                      width: MediaQuery.of(context).size.width*0.48,
                      color: Colors.blue,
                    ),
                  ],),
                  const SizedBox(height: 7,),
                  Row(children: [
                    Container(
                      height: 170,
                      width: MediaQuery.of(context).size.width*0.48,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 5,),
                    Container(
                      height: 170,
                      width: MediaQuery.of(context).size.width*0.48,
                      color: Colors.blue,
                    ),
                  ],),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width*0.31,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 7,),
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width*0.31,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 7,),
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width*0.31,
                      color: Colors.yellow,
                    ),
                  ],),
                  const SizedBox(height: 7,),
                  Row(children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width*0.31,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 7,),
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width*0.31,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 7,),
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width*0.31,
                      color: Colors.yellow,
                    ),
                  ],),
                  const SizedBox(height: 7,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
