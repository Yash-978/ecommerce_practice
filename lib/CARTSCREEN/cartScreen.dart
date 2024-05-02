import 'package:ecommerce_practice/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                  cartList.length,
                  (index) => cartmethod(index),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: 410,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.shopping_cart_rounded,
                  size: 30,
                ),
                Text(
                  'PURCHASE',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
             GestureDetector(
               onTap: () {
                 setState(() {

                 });
               },
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('PRO:$qty'),
                   Text('AMOUNT:$amount'),
                   Text('GST:'),
                   Text('TOTAL:$total'),
                 ],
               ),
             )
              ],
            ),
          )
        ],
      ),
    ));
  }

  Container cartmethod(int index) {
    return Container(
      height: 250,
      width: 410,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.7),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            // height: 150,
            // width: 150,
            decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage(
                //     'Asset/Image/1.png'
                //   ),
                // ),

                ),
            child: Image.asset(cartList[index]['img']),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                cartList[index]['name'],
                style: TextStyle(fontSize: 30),
              ),
              Text(
                cartList[index]['price'].toString(),
                style: TextStyle(fontSize: 30),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (cartList[index]['member'] > 1) {
                          cartList[index]['member']--;
                        }
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Icon(Icons.remove),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text(cartList[index]['member'].toString()),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        cartList[index]['member']++;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Icon(Icons.add),
                    ),
                  )
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {
              setState(() {
                cartList.removeAt(index);
              });
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Icon(
                Icons.delete,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
