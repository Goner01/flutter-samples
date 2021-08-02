part of 'widgets.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    required this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * 0.23,
          height: 48,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.bookmark_border,
              color: kColor,
              size: 34,
            ),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                elevation: MaterialStateProperty.all(2),
                shadowColor: MaterialStateProperty.all(Colors.black26),
                overlayColor: MaterialStateProperty.all(
                    Color(0xff45AE9F).withOpacity(0.6))),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: size.width * 0.62,
          height: 48,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add to cart',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 32,
                ),
              ],
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
              backgroundColor: MaterialStateProperty.all(Color(0xff45AE9F)),
              elevation: MaterialStateProperty.all(2),
            ),
          ),
        ),
      ],
    );
  }
}
