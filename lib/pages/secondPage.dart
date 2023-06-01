// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uts/components/nearbyR.dart';
import 'package:uts/pages/firstPage.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //row 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      color: Colors.black12,
                                      offset: Offset(1, 2))
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 7),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.purple[300],
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Text(
                          "Nearby Resturents",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.grey),
                        ),
                      ],
                    ),
              
                    SizedBox(
                      height: 50,
                    ),
              
                    //search bar
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
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                  width: MediaQuery.of(context).size.width * 0.64,
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
                      height: 25,
                    ),
              
                    nearbyR(
                        banner: "Healthy",
                        color: Colors.orange,
                        title: "Chicken Honey",
                        time: "45min",
                        colorStar: Colors.purple,
                        rating: "5",
                        isBookmark: false,
                        image: "images/image2.jpeg"),
                    SizedBox(
                      height: 20,
                    ),
                    nearbyR(
                        banner: "Trending",
                        color: Colors.red,
                        title: "Nasi Ungkep",
                        time: "15min",
                        colorStar: Colors.white,
                        rating: "4.8",
                        isBookmark: true,
                        image: "images/image3.jpeg"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(height: 100,),
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
