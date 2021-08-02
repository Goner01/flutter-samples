part of 'widgets.dart';

class CoffeSearch extends StatelessWidget {
  const CoffeSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(coffePadding),
      child: TweenAnimationBuilder(
        builder: (BuildContext context, double value, Widget? child) {
          return SizedBox(
            height: 46,
            width: value,
            child: TextField(
              cursorColor: secundaryCoffeColor,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Search',
                labelStyle: TextStyle(
                    color: Color(0xffA4907B),
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(coffePadding / 2),
                  child: Icon(
                    Icons.search,
                    color: primaryCoffeColor,
                  ),
                ),
                fillColor: Color(0xffD9C9BC),
                filled: true,
              ),
            ),
          );
        },
        curve: Curves.decelerate,
        duration: Duration(milliseconds: 1000),
        tween: Tween<double>(begin: size.width * .3, end: size.width),
      ),
    );
  }
}
