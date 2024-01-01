import 'package:flutter/material.dart';

class FoodItemScreen extends StatefulWidget {
  const FoodItemScreen({super.key});

  @override
  State<FoodItemScreen> createState() => _FoodItemScreenState();
}

class _FoodItemScreenState extends State<FoodItemScreen> {
  int itemcount = 1;
  int toatalprice = 13;
  @override
  Widget build(BuildContext context) {
    double hsize = MediaQuery.of(context).size.height;
    double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Stack(
        children: [
          Column(
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
                      height: 45,
                      width: 45,
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
                      child: IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.arrow_back_rounded,color: Colors.black,size: 30,),)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 45,
                      width: 45,
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
                        Icons.bookmark_border,
                        color: Colors.black,
                        grade: 10,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: hsize - 175,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 130,
                      ),
                      const Center(
                        child: Text(
                          "Full Thali",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                              letterSpacing: 1.2),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.blue,
                                  size: 24,
                                ),
                                Text("50min",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 25,
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.local_fire_department,
                                  color: Colors.red,
                                  size: 25,
                                ),
                                Text(
                                  "325 Kcal",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: double.infinity,
                        child: Center(
                          child: Stack(
                            children: [
                              Container(
                                height: 44,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 5),
                                  child: Text(
                                    "\$$toatalprice",
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 65,
                                  child: Container(
                                    height: 44,
                                    width: 115,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              if(itemcount>0){
                                                itemcount = itemcount - 1;
                                                toatalprice = 13* itemcount;
                                              }
                                            });
                                          },
                                          child: const Text(
                                            " -",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 30,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Container(
                                          height: 34,
                                          width: 34,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Center(
                                            child: Text(
                                              itemcount.toString(),
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              itemcount = itemcount + 1;
                                              toatalprice = 13* itemcount;
                                            });
                                          },
                                          child: const Text(
                                            "+ ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 30,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "Ingredient",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 120,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade200,
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                          ),
                                        ],
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/food/naan.webp"))),
                                  ),
                                  const Text(
                                    "Naan",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 120,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade200,
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                          ),
                                        ],
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/food/paneer.webp"))),
                                  ),
                                  const Text(
                                    "Paneer",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 120,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade200,
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                          ),
                                        ],
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/food/dal-bhaat.jpg"))),
                                  ),
                                  const Text(
                                    "Dal\nBhaat",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "About",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text("Large Meal, Raita, Sweets, Hakka Noodles, Fried Rice. People Say This Place Is Known For Great Packaging, Food Delivery, Good Packing, Quick Delivery, Healthy Food, Meals"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: 90,
              left: wsize * 0.5 - 85,
              child: Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(85),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        blurRadius: 2,
                        spreadRadius: 2,
                      ),
                    ],
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/food/Thali.png"),
                    )),
              )),
          Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          grade: 2,
                          size: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Center(
                            child: Text(
                              itemcount.toString(),
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
          ),
        ],
      ),
    );
  }
}
