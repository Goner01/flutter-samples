part of 'widgets.dart';

class ButtonsFoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 46,
          width: size.width * 0.68,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff1D1D1B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 0),
              onPressed: () {},
              child: Text(
                'Add to cart',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(
          height: 46,
          width: size.width * 0.15,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.black12)),
                  elevation: 0),
              onPressed: () {},
              child: Icon(
                Icons.call,
                color: Color(0xff1D1D1B),
              )),
        ),
      ],
    );
  }
}
