// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uts/components/discount.dart';
import 'package:uts/components/mostPopular.dart';
import 'package:uts/components/nearbyR.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //background
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Color.fromARGB(255, 184, 184, 184)],
                    stops: [0.55, 1]),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),

            //content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //row 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    color: Colors.black12,
                                    offset: Offset(1, 2))
                              ],
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.purple[300]),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              "images/restaurant.png",
                              color: Colors.white,
                              width: 30,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    color: Colors.black12,
                                    offset: Offset(1, 2))
                              ],
                              image: DecorationImage(
                                  image: AssetImage("images/human.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.purple[300]),
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                height: 30,
                                width: 30,
                              )),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    //row 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    color: Colors.black12,
                                    offset: Offset(1, 2))
                              ]),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                SizedBox(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.64,
                                  child: Expanded(
                                    child: TextField(
                                      style: TextStyle(fontSize: 18),
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                        hintStyle: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    color: Colors.black12,
                                    offset: Offset(1, 2))
                              ],
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.purple[300]),
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Icon(
                                Icons.menu_sharp,
                                color: Colors.white,
                                size: 28,
                              )),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          discount(
                            off: "50% OFF",
                            image: "images/nasi.png",
                            colors: Colors.purple[300],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          discount(
                            off: "25% OFF",
                            image: "images/fish.png",
                            colors: Colors.pink[300],
                          ),
                        ],
                      ),
                    ),

                    //navitaor
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.black12,
                                  offset: Offset(1, 2))
                            ],
                            color: Colors.purple[300],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: SizedBox(
                            height: 8,
                            width: 50,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.black12,
                                  offset: Offset(1, 2))
                            ],
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: SizedBox(
                            height: 8,
                            width: 25,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.black12,
                                  offset: Offset(1, 2))
                            ],
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: SizedBox(
                            height: 8,
                            width: 25,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //Most Popular
                    Row(
                      children: [
                        Text(
                          "Most Popular",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          mostPopular(
                              image: "images/nasi.png",
                              banner: "Trending",
                              title: "Nasi Uduk",
                              time: "24min",
                              rating: "4.9",
                              harga: 12,
                              color: Colors.red),
                          SizedBox(
                            width: 15,
                          ),
                          mostPopular(
                              image: "images/susi.png",
                              banner: "Healthy",
                              title: "Susi",
                              time: "15min",
                              rating: "4.3",
                              harga: 50,
                              color: Colors.orange),
                          SizedBox(
                            width: 15,
                          ),
                          mostPopular(
                              image: "images/fish.png",
                              banner: "New",
                              title: "Fish Salad",
                              time: "20min",
                              rating: "5",
                              harga: 24,
                              color: Colors.blue),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    //nearby restaurants
                    Row(
                      children: [
                        Text(
                          "Nearby Resturents",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    nearbyR(
                        banner: "Healthy",
                        color: Colors.orange,
                        title: "Salad Pecel",
                        time: "24min",
                        colorStar: Colors.white,
                        rating: "4.5",
                        isBookmark: false,
                        image: "images/image1.jpeg"),

                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 75,
                child: Stack(
                  children: [
                    Container(
                      width: 75,
                      height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.purple[300]
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.home,
                            shadows: <Shadow>[Shadow(color: Colors.black45, blurRadius: 15.0)],
                            size: 30,
                            color: Colors.purple[300],
                          ),
                          Icon(
                            Icons.favorite,
                            shadows: <Shadow>[Shadow(color: Colors.black45, blurRadius: 15.0)],
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.shopping_cart,
                            shadows: <Shadow>[Shadow(color: Colors.black45, blurRadius: 15.0)],
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.notifications,
                            shadows: <Shadow>[Shadow(color: Colors.black45, blurRadius: 15.0)],
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.person,
                            shadows: <Shadow>[Shadow(color: Colors.black45, blurRadius: 15.0)],
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
