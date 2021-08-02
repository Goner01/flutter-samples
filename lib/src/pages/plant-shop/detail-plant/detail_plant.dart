import 'package:flutter/material.dart';
import 'package:github/src/pages/plant-shop/detail-plant/widgets/widgets.dart';
import 'package:github/src/pages/plant-shop/plant-shope/widgets/widgets.dart';

class DetailPlantPage extends StatelessWidget {
  final Plant plant;

  const DetailPlantPage({required this.plant});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ImgAppBar(size: size, img: plant.img,),
                  const SizedBox(
                    height: 18,
                  ),
                  InformationPlant(name: plant.name,),
                  const SizedBox(
                    height: 18,
                  ),
                  MeasureAndQty(
                    size: size,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: ButtonCartPlant(price: plant.price,),
                )),
          ],
        ),
      ),
    ));
  }
}
