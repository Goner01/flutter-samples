import 'package:flutter/material.dart';
import 'package:github/src/pages/coffee-shop/home-coffe/widgets/widgets.dart';

const primaryCoffeColor = Color(0xff222326);
const secundaryCoffeColor = Color(0xffC69451);

const coffePadding = 16.0;

class HomeCoffePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: coffeAppBar(Icons.menu_rounded, () {}),
      body: Stack(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CoffeSearch(),
            const SizedBox(
              height: coffePadding * 1.5,
            ),
            CoffeCategories(),
            const SizedBox(
              height: coffePadding,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CoffeeList(),
                    const SizedBox(
                      height: coffePadding,
                    ),
                    SpecialForYou(),
                    const SizedBox(height: coffePadding*4,),
                  ],
                ),
              ),
            )
          ]),
          Align(alignment: Alignment.bottomCenter, child: _CustomNavBar())
        ],
      ),
    );
  }
}

class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight + 12,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffD6C6B8), borderRadius: BorderRadius.circular(60)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_rounded,
              color: Colors.grey,
              size: 26,
            ),
            Container(
              width: 60,
              height: kBottomNavigationBarHeight + 12,
              child: CustomPaint(
                size: Size(60, kBottomNavigationBarHeight),
                painter: SelectedItemPainter(),
                child: Icon(
                  Icons.favorite,
                  color: secundaryCoffeColor,
                  size: 26,
                ),
              ),
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.grey,
              size: 26,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.grey,
              size: 26,
            ),
          ],
        ),
      ),
    );
  }
}

class SelectedItemPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = primaryCoffeColor
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, size.height);

    path.quadraticBezierTo(
        size.width * .12, size.height * .9, size.width * .1, size.height * .48);
    path.arcToPoint(
      Offset(size.width * .88, size.height * .48),
      radius: Radius.circular(20),
      largeArc: true,
    );
    path.quadraticBezierTo(
        size.width * .86, size.height * .9, size.width, size.height);
    path.lineTo(0, size.height);
    // path.lineTo(size.width / 2, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
