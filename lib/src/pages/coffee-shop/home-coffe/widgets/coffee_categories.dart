part of 'widgets.dart';

class CoffeCategories extends StatelessWidget {
  const CoffeCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShakeTransitionX(
      duration: Duration(milliseconds: 800),
      child: SizedBox(
          height: 34,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: coffePadding,
            ),
            children: List.generate(
              coffeCategories.length,
              (i) => SizedBox(
                child: Container(
                  alignment: Alignment.center,
                  height: 34,
                  decoration: BoxDecoration(
                      color: Color(0xffD9C9BC),
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.only(
                      left: coffePadding, right: coffePadding),
                  child: Text(
                    coffeCategories[i],
                    style: TextStyle(
                        color: primaryCoffeColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
