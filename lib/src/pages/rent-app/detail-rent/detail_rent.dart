import 'package:flutter/material.dart';

import 'package:github/src/pages/rent-app/detail-rent/widgets/widgets.dart';
import 'package:github/src/pages/rent-app/rent-home/rent_home.dart';
import 'package:github/src/pages/rent-app/rent_model.dart';

class DetailRent extends StatelessWidget {
  final Rent rent;

  const DetailRent({Key? key, required this.rent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          SizedBox(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageDetailRent(size: size, rent: rent),
                  Description(description: rent.description),
                  GalleryRent(rent: rent),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kRentHorizontalP, vertical: kRentVerticalP),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/RentApp/mapa.PNG', fit: BoxFit.cover, height: 240, width: double.infinity,),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: kRentVerticalP,
            left: kRentHorizontalP,
            right: kRentHorizontalP,
            child: ButtonRentDetail(
              price: rent.price,
            ),
          ),
        ],
      ),
    ));
  }
}

