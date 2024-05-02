import 'dart:async';
import 'dart:ui';

import 'package:ecommerce_practice/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Screen'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.shopping_cart_rounded),
        ],

      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,


        children: [
          Container(
            height: 80,
            width: 410,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.search),
                Container(
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text('Search')),
                    ],
                  ),

                ),
                Icon(Icons.category_outlined),

              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment : Alignment.center,
                          child: Text('Brandy')),
                    ],
                  ),

                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Row(
                    children: [
                      Align(
                          alignment : Alignment.center,
                          child: Text('Brandy')),
                    ],
                  ),

                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Row(
                    children: [
                      Align(
                          alignment : Alignment.center,
                          child: Text('Brandy')),
                    ],
                  ),

                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Row(
                    children: [
                      Align(
                          alignment : Alignment.center,
                          child: Text('Brandy')),
                    ],
                  ),

                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  child: Row(
                    children: [
                      Align(
                          alignment : Alignment.center,
                          child: Text('Brandy')),
                    ],
                  ),

                ),

              ]
              ,
            ),
          ),

          Wrap(
            // crossAxisAlignment: WrapCrossAlignment.start,
            alignment: WrapAlignment.spaceBetween,
            children: [
              ...List.generate(productList.length, (index) => GestureDetector(
                onTap: () {
                  selectedindex =index;
                  Navigator.of(context).pushNamed('/detail');


                },
                child: imagecontainer(
                    name: productList[index]['name'],
                    img: productList[index]['img'],
                    description: productList[index]['description'],
                    price: productList[index]['price'],

                ),
              )),

            ],
          ),
        ],
      ),
    );
  }

  Widget imagecontainer({required String name, required String img , required String description,required int price}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(

                    height: 250,
                    width: 170,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                          width: 0.7),
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [


                        Row(
                          mainAxisAlignment :MainAxisAlignment.center,

                          children: [
                            Container(

                                child: Image.asset(img)),
                          ],
                        ), Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(name),
                            Text(price.toString()),
                            Icon(Icons.arrow_forward_rounded),
                          ],
                        )



                      ],
                    ),
                  ),
    );
  }
}

