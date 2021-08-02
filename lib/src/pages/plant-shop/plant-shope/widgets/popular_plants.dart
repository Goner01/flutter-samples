part of 'widgets.dart';

class PopularPlants extends StatelessWidget {
  final List<Plant> plants = [
    Plant(
        name: 'Euphorbia',
        category: 'Indoor',
        price: '25.12',
        img: 'assets/PlantShopApp/7.jpg'),
    Plant(
        name: 'Polyscias',
        category: 'Outdoor',
        price: '10.12',
        img: 'assets/PlantShopApp/8.jpg'),
    Plant(
        name: 'Lorem Ipsum',
        category: 'Indoor',
        price: '30.12',
        img: 'assets/PlantShopApp/9.jpg'),
    Plant(
        name: 'Asplenium',
        category: 'Outdoor',
        price: '8.12',
        img: 'assets/PlantShopApp/4.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                'Popular plants',
                style: TextStyle(
                    color: Color(0xff47435D),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        SizedBox(
          height: 130,
          child: ShakeTransitionX(
            duration: Duration(milliseconds: 600),
            offset: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 16),
              children: List.generate(plants.length,
                  (i) => _CardPlantPopular(size: size, plant: plants[i])),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class _CardPlantPopular extends StatelessWidget {
  const _CardPlantPopular({
    Key? key,
    required this.size,
    required this.plant,
  }) : super(key: key);

  final Size size;
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          createRouteFade(ruta: DetailPlantPage(
            plant: plant,
          ))),
      child: Container(
        alignment: Alignment.center,
        height: 130,
        child: Container(
          width: size.width * 0.6,
          margin: const EdgeInsets.only(right: 16, top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    offset: Offset(0, 2),
                    blurRadius: 6)
              ]),
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, bottom: 16, left: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        plant.img,
                        width: 78,
                        height: 78,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          child: Text(
                            plant.name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xff47435D),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          plant.category,
                          style: TextStyle(color: Colors.black38),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Text(
                          '\$' + plant.price,
                          style: TextStyle(
                              color: Color(0xff47435D),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 12,
                child: Container(
                  width: 38,
                  height: 38,
                  margin: const EdgeInsets.only(bottom: 16, left: 8),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.032),
                      borderRadius: BorderRadius.circular(8)),
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
