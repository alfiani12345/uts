// ignore: unused_import
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class discount extends StatelessWidget {

  final String off;
  final colors;
  final String image;
  const discount({super.key, required this.off, required this.image, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 200,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
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
                              borderRadius: BorderRadius.circular(15),
                              color: colors),
                          child: SizedBox(
                            height: 125,
                            width: 360,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        off,
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Daily Deals",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              image,
                              width: 175,
                            ))
                      ],
                    ),
                  );
  }
}