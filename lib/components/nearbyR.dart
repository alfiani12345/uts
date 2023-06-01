// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uts/pages/secondPage.dart';

class nearbyR extends StatelessWidget {
  final String banner;
  final String image;
  final color;
  final String title;
  final String time;
  final colorStar;
  final String rating;
  final bool isBookmark;
  const nearbyR(
      {super.key,
      required this.banner,
      required this.color,
      required this.title,
      required this.time,
      required this.colorStar,
      required this.rating,
      required this.isBookmark,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>secondPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  color: Colors.black12,
                  offset: Offset(1, 1))
            ]),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                  child: SizedBox(
                    height: 185,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                //half ----
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 35, right: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: color[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            banner,
                            style: TextStyle(
                              color: color,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                time,
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: Colors.grey),
                                child: SizedBox(
                                  height: 3,
                                  width: 3,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.star_sharp,
                                color: colorStar,
                                size: 18,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                rating,
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: isBookmark?Colors.purple[100]:Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.bookmark,
                                color: isBookmark?Colors.purple:Colors.white,
                              ),
                            ),
                          ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
