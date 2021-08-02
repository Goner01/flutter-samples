import 'package:flutter/material.dart';
import 'package:github/src/pages/shoes-store/shoes-store/widgets/widgets.dart';

class ShoesDetailPage extends StatelessWidget {
  final Shoes shoe;

  const ShoesDetailPage({required this.shoe});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      children: [
        Container(
          height: size.height * .5,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: -size.height / 2.2,
                left: -size.width * .06,
                child: Hero(
                  tag: 'card_${shoe.name}',
                  child: Container(
                    height: size.height,
                    width: size.width * 1.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: shoe.color,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: kBottomNavigationBarHeight,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 16, right: 16, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      Text(
                        'Nike',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                            color: shoe.color,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(0, 2),
                                  blurRadius: 6)
                            ]),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: size.height * 0.1,
                  left: size.width * 0.14,
                  child: Hero(
                    tag: 'name_${shoe.name}',
                    child: Image.asset(
                      shoe.img,
                      height: 260,
                      width: 260,
                    ),
                  )),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Colors.grey,
          margin: const EdgeInsets.symmetric(horizontal: 16),
        ),
        const SizedBox(
          height: 16,
        ),
        _InformationShoe(shoe: shoe),
      ],
    ));
  }
}

class _InformationShoe extends StatelessWidget {
  _InformationShoe({
    Key? key,
    required this.shoe,
  }) : super(key: key);

  final Shoes shoe;
  final List shoeSize = ['7.5', '8', '8.5', '9', '9.5', '10'];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Air-Max-270',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('\$' + shoe.price,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'MORE DETAILS',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Colors.black
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Row(
              children: [
                Text(
                  'Size',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'UK',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'USA',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            SizedBox(
                height: 56,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: List.generate(
                      shoeSize.length,
                      (i) => Container(
                        alignment: Alignment.center,
                        width: 100,
                        margin: const EdgeInsets.only(right: 18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.6),
                              width: 1,
                            )),
                        child: Text(shoeSize[i], style: TextStyle(fontSize: 20),),
                      ),
                    ))),
            const SizedBox(height: 32,),
            SizedBox(
              height: 46,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffFA3C67))
                ),
                onPressed: (){}, 
                child: Text('ADD TO BAG', style: TextStyle(color: Colors.white),)
          ),
            )
          ],
        ));
  }
}
