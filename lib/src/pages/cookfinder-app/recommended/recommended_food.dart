import 'package:flutter/material.dart';
import 'package:github/src/pages/cookfinder-app/food-detail/food_detail.dart';
import 'package:github/src/pages/cookfinder-app/home-screen/widgets/widgets.dart';
import 'package:github/src/utils/transition_page.dart';

class RecommendedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Recommended',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 1,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Icon(Icons.more_vert_rounded),
            )
          ],
        ),
        body: GridView(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: 230),
          physics: BouncingScrollPhysics(),
          children: List.generate(
            recommendedFood.length,
            (i) => GestureDetector(
              onTap: () => Navigator.push(context,
                  createRouteFade(ruta: FoodDetail(food: recommendedFood[i]))),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: size.height* 0.22,
                      decoration: BoxDecoration(
                          color: recommendedFood[i].color,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Hero(
                        tag: recommendedFood[i].name,
                        child: Image.asset(
                          recommendedFood[i].img,
                          height: size.height* 0.19,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: size.height* 0.15,
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: recommendedFood[i].colorText,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '${recommendedFood[i].stars}/5',
                                style: TextStyle(
                                    color: recommendedFood[i].colorText,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            recommendedFood[i].name,
                            style: TextStyle(
                                color: recommendedFood[i].colorText,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$${recommendedFood[i].price}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(
                                Icons.favorite,
                                size: 22,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
