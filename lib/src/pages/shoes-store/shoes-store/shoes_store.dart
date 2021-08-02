import 'package:flutter/material.dart';
import 'package:github/src/pages/shoes-store/shoes-store/widgets/widgets.dart';

const double iconSize = 28;

class ShoesStorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              AppBarShoes(),
              const SizedBox(
                height: 20,
              ),
              _BrandsList(),
              const SizedBox(
                height: 16,
              ),
              FeaturedShoes(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: size.height * 0.23,
              child: CustomPaint(
                painter: BottomCurvePainter(),
              ),
            ),
          ),
          More(),
          _BottomNavBar()
        ],
      ),
    ));
  }
}




class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Color(0xffFA3C67),
              size: iconSize,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.grey,
              size: iconSize,
            ),
            Icon(
              Icons.location_on_outlined,
              color: Colors.grey,
              size: iconSize,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
              size: iconSize,
            ),
            Icon(
              Icons.person_outline_rounded,
              color: Colors.grey,
              size: iconSize,
            )
          ],
        ),
      ),
    );
  }
}

class _BrandsList extends StatelessWidget {
  final List<String> brand = [
    'Nike',
    'Addidas',
    'Jordan',
    'Puma',
    'Skechers',
    'Reebok',
    'Guante'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 20),
        children: List.generate(
            brand.length,
            (i) => Container(
                  padding: const EdgeInsets.only(right: 28),
                  child: Text(
                    brand[i],
                    style: TextStyle(
                        color: i == 0 ? Colors.black : Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )),
      ),
    );
  }
}
