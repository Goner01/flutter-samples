import 'package:flutter/material.dart';
import 'package:github/src/pages/cookfinder-app/food-detail/widgets/widgets.dart';
import 'package:github/src/pages/cookfinder-app/home-screen/widgets/widgets.dart';
import 'package:github/src/utils/animation_transition.dart';

class FoodDetail extends StatelessWidget {
  final RecommendFood food;

  const FoodDetail({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  HigherDesignDetail(food: food),
                  LowerDesignDetail(food: food),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ShakeTransitionY(
                  duration: Duration(milliseconds: timeAnimation),
                  offset: 100,
                  child: ButtonsFoodDetail()
                ),
              ))
          ],
        ));
  }
}
