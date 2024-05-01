import 'package:ecommerce_practice/CARTSCREEN/cartScreen.dart';
import 'package:flutter/material.dart';

import 'DETAILSCREEN/detailScreen.dart';
import 'HOMESCREEN/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: DetailScreen(),
      routes: {
        '/':(context)=>HomeScreen(),
        '/detail':(context)=>DetailScreen(),
        '/cart':(context)=>cartScreen(),
      },
    );
  }
}

