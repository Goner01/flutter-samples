import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:github/src/pages/plant-shop/plant-shope/widgets/widgets.dart';

class PlantShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                CustomAppBarPlant(),
                SearchPlant(),
                const SizedBox(
                  height: 20,
                ),
                AllPlants(),
                const SizedBox(
                  height: 18,
                ),
                CardAllPlants(),
                const SizedBox(
                  height: 22,
                ),
                PopularPlants()
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: kBottomNavigationBarHeight+10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 106,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xffE9FAF7),
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home_rounded, size: 28, color: Color(0xff14C49B),),
                    const SizedBox(width: 6,),
                    Text('Home', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color(0xff14C49B)),),
                  ],
                ),
              ),
              Icon(Icons.favorite_border, size: 28, color: Colors.grey,),
              Icon(Icons.shopping_cart, size: 28, color: Colors.grey,),
              Icon(Icons.person, size: 28, color: Colors.grey,),
            ],
          ),
        ),
    );
  }
}

