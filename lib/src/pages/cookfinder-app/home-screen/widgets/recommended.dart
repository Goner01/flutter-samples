part of 'widgets.dart';

final List<RecommendFood> recommendedFood = [
  RecommendFood(
      name: 'Fish',
      stars: '4,5',
      price: '20.5',
      img: 'assets/CookFinderApp/1.png',
      color: Color(0xffEDF7F1),
      colorText: Color(0xff72917B)),
  RecommendFood(
      name: 'Vegan Meals',
      stars: '4,8',
      price: '24.5',
      img: 'assets/CookFinderApp/2.png',
      color: Color(0xffFFFAEE),
      colorText: Color(0xffA9905A)),
  RecommendFood(
      name: 'Best Pasta',
      stars: '4,0',
      price: '18',
      img: 'assets/CookFinderApp/3.png',
      color: Color(0xffFFF8F8),
      colorText: Color(0xffAD5B59)),
  RecommendFood(
      name: 'Israel hummus',
      stars: '4,5',
      price: '20.5',
      img: 'assets/CookFinderApp/4.png',
      color: Color(0xffFEF2EA),
      colorText: Color(0xff73937B)),
  RecommendFood(
      name: 'Raw Salads',
      stars: '4,5',
      price: '20.5',
      img: 'assets/CookFinderApp/1.png',
      color: Color(0xffFBFFE9),
      colorText: Color(0xffE1814D)),
  RecommendFood(
      name: 'Food 6',
      stars: '4,5',
      price: '20.5',
      img: 'assets/CookFinderApp/2.png',
      color: Color(0xffFDF7E4),
      colorText: Color(0xffB14F40)),
];

class Recommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(
            'Recommended',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 14),
            physics: BouncingScrollPhysics(),
            children:
                List.generate(recommendedFood.length, (i) => RecommendedCard(recommendedFood: recommendedFood[i],)),
          ),
        ),
        SeeAll(
          callback: () =>
              Navigator.push(context, createRouteFade(ruta: RecommendedPage())),
        )
      ],
    );
  }
}

class RecommendedCard extends StatelessWidget {
  final RecommendFood recommendedFood;

  const RecommendedCard({required this.recommendedFood});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, createRouteFade(ruta: FoodDetail(food: recommendedFood))),
      child: Container(
        width: 190,
        margin: const EdgeInsets.only(right: 20),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 190,
                width: 200,
                decoration: BoxDecoration(
                    color: recommendedFood.color,
                    borderRadius: BorderRadius.circular(16)),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Hero(
                  tag: recommendedFood.name,
                  child: Image.asset(
                    recommendedFood.img,
                    height: 156,
                    fit: BoxFit.cover,
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 16,
                          color: recommendedFood.colorText,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          '${recommendedFood.stars}/5',
                          style: TextStyle(
                              color: recommendedFood.colorText,
                              fontSize: 13),
                        ),
                      ],
                    ),
                    Text(
                      recommendedFood.name,
                      style: TextStyle(
                          color: recommendedFood.colorText,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${recommendedFood.price}',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.favorite,
                          size: 24,
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
    );
  }
}

class RecommendFood {
  final String name;
  final String stars;
  final String price;
  final String img;
  final Color color;
  final Color colorText;

  RecommendFood(
      {required this.name,
      required this.stars,
      required this.price,
      required this.img,
      required this.color,
      required this.colorText});
}
