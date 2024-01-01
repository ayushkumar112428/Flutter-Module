import 'package:flutter/material.dart';
import 'package:model_3_49/part60/foodSecondScreen.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                ),
                              ]),
                          child: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.black,
                            grade: 10,
                            size: 28,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                ),
                              ]),
                          child: const Icon(
                            Icons.search,
                            color: Colors.black,
                            grade: 10,
                            size: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Restaurant",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 25,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  "20-30 min",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2.4km Restaurant",
                                style: TextStyle(
                                    color: Colors.grey.shade500, fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "R",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Orange Sandwlches is delicious",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.yellow,
                            ),
                            Text(
                              "4.7",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            child: const Center(
                                child: Text(
                              "Recommend",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            child: const Center(
                                child: Text(
                              "Popular",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            child: const Center(
                                child: Text(
                              "Noddles",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            child: const Center(
                                child: Text(
                              "Pizza",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 2,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/food/macdonalds.png",
                            height: 120,
                            width: wsize*0.3,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: wsize*0.6,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "McDonald's",
                                    style: TextStyle(
                                        fontSize: 22, fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 22,grade: 5,
                                  )
                                ],
                              ),
                              Text(
                                "No1. in sales",
                                style: TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                "\$12",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 7,),
                  Card(
                    color: Colors.white,
                    elevation: 2,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/food/burger.png",
                            height: 120,
                            width: wsize*0.3,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: wsize*0.6,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Burger",
                                    style: TextStyle(
                                        fontSize: 22, fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 22,grade: 5,
                                  )
                                ],
                              ),
                              Text(
                                "No1. in sales",
                                style: TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                "\$8",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 7,),
                  Card(
                    color: Colors.white,
                    elevation: 2,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/food/sandwich.jpg",
                            height: 120,
                            width: wsize*0.3,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: wsize*0.6,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Sandwich",
                                    style: TextStyle(
                                        fontSize: 22, fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 22,grade: 5,
                                  )
                                ],
                              ),
                              Text(
                                "No1. in sales",
                                style: TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                "\$5",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 7,),
                  Card(
                    color: Colors.white,
                    elevation: 2,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/food/Thali.png",
                            height: 120,
                            width: wsize*0.3,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: wsize*0.6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Full Thali",
                                    style: TextStyle(
                                        fontSize: 22, fontWeight: FontWeight.w500),
                                  ),
                                  IconButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const FoodItemScreen()));
                                      },
                                      icon: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 22,grade: 5,
                                  ))
                                ],
                              ),
                              const Text(
                                "No1. in sales",
                                style: TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                "\$13",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 7,),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  grade: 2,
                  size: 30,
                ),
              )),
        ],
      ),
    );
  }
}
