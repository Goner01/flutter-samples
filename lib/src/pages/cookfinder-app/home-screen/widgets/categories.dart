part of 'widgets.dart';

class Categories {
  final String name;
  final String img;
  final Color backgroundColor;
  final Color colorText;

  Categories({required this.name, required this.img, required this.backgroundColor, required this.colorText});
}

final List<Categories> categoriesFood = [
    Categories(
        name: 'Grill',
        img: 'assets/CookFinderApp/icon1.png',
        backgroundColor: Color(0xFFFFF8F8),
        colorText: Color(0xffAB4A47)),
    Categories(
        name: 'Vegan',
        img: 'assets/CookFinderApp/icon2.png',
        backgroundColor: Color(0xffEDF7F1),
        colorText: Color(0xff72917B)),
    Categories(
        name: 'Spicy',
        img: 'assets/CookFinderApp/icon3.png',
        backgroundColor: Color(0xffFEF2EA),
        colorText: Color(0xff73937B)),
    Categories(
        name: 'Chocolate',
        img: 'assets/CookFinderApp/icon4.png',
        backgroundColor: Color(0xffFBFFE9),
        colorText: Color(0xffE1814D)),
    Categories(
        name: 'Seafood',
        img: 'assets/CookFinderApp/icon5.png',
        backgroundColor: Color(0xffFDF7E4),
        colorText: Color(0xffB14F40)),
    Categories(
        name: 'Italian',
        img: 'assets/CookFinderApp/icon6.png',
        backgroundColor: Color(0xffF6F6F6),
        colorText: Color(0xff9EAFA4)),
    Categories(
        name: 'Pizza',
        img: 'assets/CookFinderApp/icon7.png',
        backgroundColor: Color(0xffFFF8F8),
        colorText: Color(0xffAD5B59)),
    Categories(
        name: 'Healty',
        img: 'assets/CookFinderApp/icon8.png',
        backgroundColor: Color(0xffEDF7F1),
        colorText: Color(0xffD68C63)),
    Categories(
        name: 'Fruits',
        img: 'assets/CookFinderApp/icon9.png',
        backgroundColor: Color(0xffFEF2EA),
        colorText: Color(0xffAB4A47)),
  ];

class CategoriesView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 126,
          child: ListView(
            padding: const EdgeInsets.only(
              left: 14,
            ),
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: List.generate(
                categoriesFood.length,
                (i) => Container(
                      width: 118,
                      margin: const EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                          color: categoriesFood[i].backgroundColor,
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            categoriesFood[i].img,
                            height: 60,
                            width: 60,
                          ),
                          Text(
                            categoriesFood[i].name,
                            style: TextStyle(
                                color: categoriesFood[i].colorText,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )),
          ),
        ),
        SeeAll(callback: () => Navigator.push(context, createRouteFade(ruta: CategoriesFoodPage())),),
      ],
    );
  }
}

