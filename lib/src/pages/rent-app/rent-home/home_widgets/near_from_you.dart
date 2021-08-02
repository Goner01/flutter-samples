part of 'widgets.dart';

class NearFromYou extends StatelessWidget {
  const NearFromYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kRentVerticalP, vertical: kRentVerticalP),
          child: Row(
            children: [
              Text(
                'Near from you',
                style: TextStyle(fontSize: 20),
              ),
              Spacer(),
              Text(
                'See more',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        const SizedBox(
          height: kRentVerticalP / 2,
        ),
        CardRent()
      ],
    );
  }
}

class CardRent extends StatelessWidget {
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
          itemCount: rents.length,
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: kRentHorizontalP),
          itemBuilder: (context, i) {
            final rent = rents[i];
            return GestureDetector(
              onTap: () => Navigator.push(context, createRouteFade(ruta: DetailRent(rent: rent,))),
              child: Stack(
                children: [
                  Container(
                    width: size.width * 0.66,
                    height: 300,
                    margin: const EdgeInsets.only(right: 18),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(rent.img),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: _BlurDistance(
                      distance: rent.distance,
                    ),
                  ),
                  Container(
                    width: size.width * 0.66,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: [0.2, 0.7],
                            colors: [Colors.black38, Colors.transparent])),
                  ),
                  _CardInfo(
                    title: rent.title,
                    location: rent.location,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BlurDistance extends StatelessWidget {
  final String distance;

  const _BlurDistance({Key? key, required this.distance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 18, top: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: SizedBox(
            height: 30,
            width: 100,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Container(
                color: Colors.black.withOpacity(.25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 22,
                    ),
                    const SizedBox(
                      width: kRentHorizontalP / 2,
                    ),
                    Text(
                      distance,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
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

class _CardInfo extends StatelessWidget {
  final String title;
  final String location;

  const _CardInfo({Key? key, required this.title, required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: kRentVerticalP,
      left: kRentHorizontalP,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: kRentHorizontalP / 2,
          ),
          Text(location,
              style: TextStyle(
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
