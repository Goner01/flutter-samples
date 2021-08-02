part of 'widgets.dart';

class CategoryBook extends StatefulWidget {
  @override
  _CategoryBookState createState() => _CategoryBookState();
}

class _CategoryBookState extends State<CategoryBook> {
  final List category = ['Trending', 'Fiction', 'Humor', 'Fantasy'];
  int cardSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Text(
            'Category',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: kColor),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          height: 32,
          child: ShakeTransitionX(
            duration: Duration(milliseconds: 600),
            offset: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: category.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              itemBuilder: (BuildContext context, int i) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      cardSelected = i;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: i == cardSelected ? Color(0xff45AE9F) : Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: i == cardSelected
                            ? null
                            : Border.all(color: kColor, width: 1.2)),
                    child: Text(
                      category[i],
                      style: TextStyle(
                          color: i == cardSelected ? Colors.white : kColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
