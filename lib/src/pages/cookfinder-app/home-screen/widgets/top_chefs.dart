part of 'widgets.dart';

class TopChefs extends StatelessWidget {
  final List<Chefs> chefs = [
    Chefs(
        name: 'Jason',
        img: 'assets/CookFinderApp/avatar1.png',
        backColor: Color(0xffe48ba5)),
    Chefs(
        name: 'Martin',
        img: 'assets/CookFinderApp/avatar2.png',
        backColor: Color(0xffb36b6a)),
    Chefs(
        name: 'Alex',
        img: 'assets/CookFinderApp/avatar3.png',
        backColor: Color(0xff6b90b2)),
    Chefs(
        name: 'Michael',
        img: 'assets/CookFinderApp/avatar4.png',
        backColor: Color(0xff9c6c48)),
    Chefs(
        name: 'Niara',
        img: 'assets/CookFinderApp/avatar5.png',
        backColor: Color(0xffeec458)),
    Chefs(
        name: 'Giorgio',
        img: 'assets/CookFinderApp/avatar6.png',
        backColor: Color(0xff49764c)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text('Top chefs',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          height: 110,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 14),
            children: List.generate(
                chefs.length,
                (i) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(right: 14),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: chefs[i].backColor, width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(chefs[i].img),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 10),
                          child: Text(
                            chefs[i].name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
          ),
        ),
        SeeAll(callback: () => print('chefs'),)
      ],
    );
  }
}

class Chefs {
  final String name;
  final String img;
  final Color backColor;

  Chefs({required this.name, required this.img, required this.backColor});
}
