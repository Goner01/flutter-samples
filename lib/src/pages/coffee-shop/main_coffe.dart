import 'package:flutter/material.dart';
import 'package:github/src/pages/coffee-shop/home-coffe/home_coffe.dart';

class MainCoffe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffEBDBCD),
        fontFamily: 'Lora',
      ),
      home: HomeCoffePage(),
    );
  }
}
