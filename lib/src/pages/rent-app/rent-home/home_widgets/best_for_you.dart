part of 'widgets.dart';

class BestForYou extends StatelessWidget {
  const BestForYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShakeTransitionY(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kRentVerticalP,
                vertical: kRentVerticalP / 2),
            child: Row(
              children: [
                Text(
                  'Best for you',
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
          ...List.generate(
              rents.length - 2,
              (index) => _CardBestForYou(
                    rent: rents[index],
                  )).reversed
        ],
      ),
    );
  }
}

class _CardBestForYou extends StatelessWidget {
  final Rent rent;

  const _CardBestForYou({Key? key, required this.rent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, createRouteFade(ruta: DetailRent(rent: rent))),
      child: Container(
        height: 110,
        width: double.infinity,
        margin: const EdgeInsets.only(
            left: kRentHorizontalP,
            right: kRentHorizontalP,),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                rent.img,
                fit: BoxFit.cover,
                height: 84,
                width: 84,
              ),
            ),
            const SizedBox(
              width: kRentHorizontalP,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  rent.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: kRentVerticalP / 2,
                ),
                Text(
                  '\$ ${rent.price}',
                  style: TextStyle(color: colorGradientRent[1]),
                ),
                const SizedBox(
                  height: kRentVerticalP / 2,
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.bed,
                      size: 18,
                      color: Colors.black45,
                    ),
                    const SizedBox(
                      width: kRentHorizontalP * .6,
                    ),
                    Text(
                      '${rent.bedroom} Bedroom',
                      style: TextStyle(color: Colors.black38),
                    ),
                    const SizedBox(
                      width: kRentHorizontalP,
                    ),
                    FaIcon(
                      FontAwesomeIcons.bath,
                      size: 18,
                      color: Colors.black45,
                    ),
                    const SizedBox(
                      width: kRentHorizontalP * .6,
                    ),
                    Text(
                      '${rent.bathroom} Bathroom',
                      style: TextStyle(color: Colors.black38),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
