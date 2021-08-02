part of 'widgets.dart';

class Information extends StatelessWidget {
  const Information({
    required this.size,
    required this.price,
    required this.autor,
    required this.title,
  });

  final Size size;
  final String price;
  final String autor;
  final String title;

  @override
  Widget build(BuildContext context) {
    final List<Widget> stars = List.generate(
        6,
        (i) => (i != 5)
            ? Icon(
                Icons.star,
                color: Colors.orange,
              )
            : Padding(
                padding: const EdgeInsets.only(left: 6),
                child:
                    Text('5.0', style: TextStyle(color: kColor, fontSize: 18)),
              ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
                width: size.width * 0.7,
                child: Text(title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ))),
            Spacer(),
            Text(
              '\$$price',
              style: TextStyle(
                  color: kColor, fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          autor,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(children: stars)
      ],
    );
  }
}