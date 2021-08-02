part of 'widgets.dart';

class ButtonCartPlant extends StatelessWidget {
  final String price;

  const ButtonCartPlant({required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xff14C49B),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0xff14C49B).withOpacity(0.8),
              offset: Offset(0, 2),
              blurRadius: 8,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '\$'+price,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Container(
            height: 18,
            width: 2,
            color: Colors.white,
            margin: EdgeInsets.only(left: 50, right: 26),
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            'Add to Cart',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
