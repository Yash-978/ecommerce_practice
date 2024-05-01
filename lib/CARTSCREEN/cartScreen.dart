import 'package:flutter/material.dart';
class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 250,
            width: 410,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,
              width: 0.7),
              borderRadius: BorderRadius.circular(15),


            ),
            child: Column(
              children: [

              ],
            ),

          )
        ],
      ),
    ));
  }
}
