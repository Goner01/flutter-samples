part of 'widgets.dart';

class CardCoffee extends StatelessWidget {
  const CardCoffee({
    Key? key,
    required this.coffe,
  }) : super(key: key);

  final Coffe coffe;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return ShakeTransitionY(
      duration: Duration(milliseconds: 800),
      offset: height*.25,
      child: Container(
        height: 110,
        margin: const EdgeInsets.symmetric(vertical: coffePadding * 1.2),
        padding: const EdgeInsets.all(coffePadding * 1.2),
        decoration: BoxDecoration(
          color: primaryCoffeColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(coffe.name,
                        style: TextStyle(
                            color: Color(0xffD5C8C0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Text(coffe.type,
                        style: TextStyle(
                            color: Colors.white38,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                Text(
                  '\$${coffe.price}',
                  style: TextStyle(
                      color: secundaryCoffeColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 28,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: secundaryCoffeColor,
              ),
              child: Text(
                'Add to cart',
                style: TextStyle(
                    color: primaryCoffeColor, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
