import 'package:flutter/material.dart';

import 'package:github/src/pages/coffee-shop/coffe_models.dart';
import 'package:github/src/pages/coffee-shop/detail-coffe/widgets/widgets.dart';
import 'package:github/src/pages/coffee-shop/home-coffe/home_coffe.dart';
import 'package:github/src/pages/coffee-shop/home-coffe/widgets/widgets.dart';

class DetailCoffePage extends StatelessWidget {
  final Coffe coffe;
  final String heroTag;

  const DetailCoffePage({Key? key, required this.coffe, required this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: coffeAppBar(
            Icons.arrow_back_ios_new_rounded, () => Navigator.pop(context)),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: coffePadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopImgCoffe(size: size, coffe: coffe, heroTag: heroTag,),
              CardCoffee(coffe: coffe),
              CoffeDescription()
            ],
          ),
        ));
  }
}
