import 'package:flutter/material.dart';

class FourImages extends StatelessWidget {
  const FourImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepOrangeAccent,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 200,
              left: 15,
              child: Image.asset(
                "assets/img/img.jpg",
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              top: 200,
              right: 15,
              child: Image.asset(
                "assets/img/img.jpg",
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              bottom: 200,
              left: 15,
              child: Image.asset(
                "assets/img/img.jpg",
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              bottom: 200,
              right: 15,
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      // borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage("assets/img/img.jpg")))),
            ),
            const Text(
              'Har Har Mahadev',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500,color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
