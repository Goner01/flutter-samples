part of 'widgets.dart';

class CardAllPlants extends StatelessWidget {
  final List<Plant> plants = [
    Plant(
        name: 'Cactus',
        category: 'Indoor',
        price: '15.12',
        img: 'assets/PlantShopApp/1.jpg'),
    Plant(
        name: 'Aloe Vera',
        category: 'Indoor',
        price: '10.12',
        img: 'assets/PlantShopApp/2.jpg'),
    Plant(
        name: 'Bonsai',
        category: 'Indoor',
        price: '30.12',
        img: 'assets/PlantShopApp/3.jpg'),
    Plant(
        name: 'Asplenium',
        category: 'Outdoor',
        price: '8.12',
        img: 'assets/PlantShopApp/4.jpg'),
    Plant(
        name: 'Philodendron scandens',
        category: 'Office',
        price: '15.12',
        img: 'assets/PlantShopApp/5.jpg'),
    Plant(
        name: 'Bonsai Pino',
        category: 'Outdoor',
        price: '26.12',
        img: 'assets/PlantShopApp/6.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: 300,
      child: ShakeTransitionX(
        duration: Duration(milliseconds: 700),
        offset: size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: plants.length,
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: ( context,  i) {
            return GestureDetector(
              onTap: () => Navigator.push(
                        context,
                        createRouteFade(ruta: DetailPlantPage(plant: plants[i],))),
              child: Container(
                width: size.width * 0.6,
                height: 300,
                margin: const EdgeInsets.only(right: 18),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(plants[i].img),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    _FavoriteIcon(),
                    Spacer(),
                    _BlurInformation(plant: plants[i])
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _FavoriteIcon extends StatelessWidget {
  const _FavoriteIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: 38,
        height: 38,
        margin: const EdgeInsets.only(right: 18, top: 14),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(8)),
        child: Container(
          margin:
              const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(6)),
          child: Icon(
            Icons.favorite,
            color: Colors.red.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}

class _BlurInformation extends StatelessWidget {
  const _BlurInformation({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: SizedBox(
          height: 70,
          width: 180,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              color: Colors.grey[700]!.withOpacity(.5),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 90,
                          child: Text(
                            plant.name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        Text(
                          plant.category,
                          style: TextStyle(
                              color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      '\$' + plant.price,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Plant {
  final String name;
  final String price;
  final String category;
  final String img;

  Plant({required this.name, required this.price, required this.category, required this.img});
}