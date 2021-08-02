part of 'widgets.dart';

class CoffeeList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ShakeTransitionX(
      duration: Duration(milliseconds: 600),
      child: SizedBox(
        height: size.height * .42,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(coffePadding),
          children: List.generate(coffeList.length, (i) {
            final coffe = coffeList[i];
            return _CardCoffee(
              coffe: coffe,
              size: size,
            );
          }),
        ),
      ),
    );
  }
}

class _CardCoffee extends StatelessWidget {
  const _CardCoffee({
    Key? key,
    required this.coffe,
    required this.size,
  }) : super(key: key);

  final Coffe coffe;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, createRouteFade(ruta: DetailCoffePage(coffe: coffe, heroTag: '',), duration: 1000, reverseDuration: 700)),
      child: Container(
        width: size.width * 0.48,
        margin: const EdgeInsets.only(right: coffePadding),
        decoration: BoxDecoration(
            color: primaryCoffeColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(coffePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(coffePadding * .8),
                child: Center(
                    child: Hero(
                  tag: coffe.name,
                  flightShuttleBuilder: (flightContext, animation,
                      flightDirection, fromHeroContext, toHeroContext) {
                    Widget _current;

                    if (flightDirection == HeroFlightDirection.push) {
                      _current = toHeroContext.widget;
                    } else {
                      _current = fromHeroContext.widget;
                    }

                    return AnimatedBuilder(
                      animation: animation,
                      builder: (context, _) {
                        final newValue =
                            lerpDouble(0.0, 2 * pi, animation.value);

                        return Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.001)
                            ..rotateZ(newValue!),
                          child: _current,
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    coffe.img,
                    fit: BoxFit.contain,
                    height: size.height * .15,
                  ),
                )),
              ),
              Text(
                coffe.name,
                style: TextStyle(
                    color: Color(0xffD5C8C0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                coffe.type,
                style: TextStyle(
                    color: Colors.white38,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${coffe.price}',
                    style: TextStyle(
                        color: secundaryCoffeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: secundaryCoffeColor, shape: BoxShape.circle),
                    child: Icon(
                      Icons.add,
                      color: primaryCoffeColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
