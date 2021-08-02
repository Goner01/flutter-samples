part of 'widgets.dart';

class FilterRent extends StatelessWidget {
  FilterRent({Key? key}) : super(key: key);

  final List category = ['All', 'House', 'Apartment', 'Hotel', 'Villa'];

  @override
  Widget build(BuildContext context) {
    final List<Widget> list = List.generate(
        category.length,
        (i) => Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
            padding: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(
                color: i == 0 ? null : Color(0xffF7F7F7),
                borderRadius: BorderRadius.circular(10),
                gradient: i == 0 ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: colorGradientRent
                ) : null,
                boxShadow: [
                  BoxShadow(
                      color: i == 0
                          ? Colors.black26
                          : Colors.transparent,
                      offset: Offset(0, 2),
                      blurRadius: 6),
                ]),
            child: Text(
              category[i],
              style: TextStyle(
                  color: i == 0 ? Colors.white : Colors.grey,
                  fontWeight: FontWeight.bold),
            )));

    return SizedBox(
      height: 48,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10),
        children: list,
      ),
    );
  }
}
