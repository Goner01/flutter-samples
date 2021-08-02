part of 'widgets.dart';

List<Shoes> shoes = [
  Shoes(
      name: 'EPIC-REACT',
      brand: 'NIKE',
      price: '130',
      img: 'assets/ShoesStore/1.png',
      color: Color(0xFF5574b9)),
  Shoes(
      name: 'AIR-MAX',
      brand: 'NIKE',
      price: '150',
      img: 'assets/ShoesStore/2.png',
      color: Color(0xFF52b8c3)),
  Shoes(
      name: 'AIR-290',
      brand: 'NIKE',
      price: '125',
      img: 'assets/ShoesStore/3.png',
      color: Color(0xFFE3AD9B)),
  Shoes(
      name: 'EPIC-FORCE',
      brand: 'NIKE',
      price: '100',
      img: 'assets/ShoesStore/4.png',
      color: Color(0xFF444547)),
];

class FeaturedShoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            child: RotatedBox(
              quarterTurns: -1,
              child: Container(
                width: size.height * 0.36,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'New',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Featured',
                    ),
                    Text(
                      'Upcoming',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.48,
            child: _ShoesList(size: size),
          ),
        ],
      ),
    );
  }
}

class _ShoesList extends StatefulWidget {
  _ShoesList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  __ShoesListState createState() => __ShoesListState();
}

class __ShoesListState extends State<_ShoesList> {
  final _pageController = PageController(viewportFraction: 0.84);
  double _currentPage = 0.0;

  void _listener() {
    setState(() {
      _currentPage = _pageController.page!;
    });
  }

  @override
  void initState() {
    _pageController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: shoes.length,
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) {
          final percentage = i - _currentPage;

          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                createRouteFade(ruta: ShoesDetailPage(
                  shoe: shoes[i],
                ))),
            child: Container(
                margin: EdgeInsets.only(left: widget.size.width * 0.16),
                child: Stack(
                  children: [
                    Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.002)
                        ..rotateY(1.2 * percentage),
                      child: Hero(
                        tag: 'card_${shoes[i].name}',
                        child: Material(
                          child: Container(
                            height: widget.size.height * 0.38,
                            width: widget.size.width * 0.56,
                            margin: const EdgeInsets.only(right: 20),
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                color: shoes[i].color,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 1),
                                      blurRadius: 6)
                                ]))))),
                    Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.002)
                        ..rotateY(1.2 * percentage),
                      child: Container(
                        height: widget.size.height * 0.38,
                        width: widget.size.width * 0.56,
                        margin: const EdgeInsets.only(right: 20),
                        padding: EdgeInsets.all(14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  shoes[i].brand,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  shoes[i].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '\$${shoes[i].price}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: (percentage * -1),
                      child: Transform.translate(
                        offset: Offset(140 * percentage,
                            (130 * percentage * -1).clamp(0.0, 40.0)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: widget.size.height * 0.1, left: 14),
                          child: Hero(
                            tag: 'name_${shoes[i].name}',
                            child: Image.asset(
                              shoes[i].img,
                              height: widget.size.height * 0.24,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          );
        });
  }
}

class Shoes {
  final String name;
  final String price;
  final String img;
  final String brand;
  final Color color;

  Shoes({required this.name, required this.price, required this.img, required this.brand, required this.color});
}
