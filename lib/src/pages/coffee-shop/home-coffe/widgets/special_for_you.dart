part of 'widgets.dart';

class SpecialForYou extends StatelessWidget {
  const SpecialForYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(coffePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Special for you',
            style: TextStyle(
                color: primaryCoffeColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: coffePadding / 2,
          ),
          ...List.generate(coffeList.length, (i) {
            final coffe = coffeList[i];
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  createRouteFade(
                      ruta: DetailCoffePage(
                    coffe: coffe,
                    heroTag: 'special',
                  ))),
              child: Container(
                height: 90,
                margin: const EdgeInsets.symmetric(vertical: coffePadding / 2),
                padding: const EdgeInsets.symmetric(
                    horizontal: coffePadding * 1.5,
                    vertical: coffePadding * .8),
                decoration: BoxDecoration(
                  color: primaryCoffeColor,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(coffe.name,
                            style: TextStyle(
                                color: Color(0xffD5C8C0),
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        Text(coffe.type,
                            style: TextStyle(
                                color: Colors.white38,
                                fontSize: 13,
                                fontWeight: FontWeight.w500)),
                        Text(
                          '\$${coffe.price}',
                          style: TextStyle(
                              color: secundaryCoffeColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Image.asset(
                      coffe.img,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            );
          }).reversed,
        ],
      ),
    );
  }
}
