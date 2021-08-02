part of 'widgets.dart';

class BestSeller extends StatelessWidget {
  final List<Book> books = [
    Book(
        name: 'The Lord of the Rings',
        autor: 'J. R. R. Tolkien',
        img: 'assets/BookStoreApp/1.jpg',
        price: '25.99'),
    Book(
        name: 'The Call of Cthulhu',
        autor: 'Howard Phillips Lovecraft',
        img: 'assets/BookStoreApp/2.jpg',
        price: '30'),
    Book(
        name: "Harry Potter and the Philosopher's Stone",
        autor: 'J. K. Rowling',
        img: 'assets/BookStoreApp/3.jpg',
        price: '20'),
    Book(
        name: "Le Petit Prince",
        autor: 'Antoine de Saint-Exupéry',
        img: 'assets/BookStoreApp/4.jpg',
        price: '18.99'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Row(
            children: [
              Text(
                'Best Seller',
                style: TextStyle(
                    fontSize: 26, fontWeight: FontWeight.bold, color: kColor),
              ),
              Spacer(),
              Text(
                'View All',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          height: 260,
          child: ShakeTransitionX(
            duration: Duration(milliseconds: 700),
            offset: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: books.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              itemBuilder: (BuildContext context, int i) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      createRouteFade(ruta: DetailPage(
                        book: books[i],
                      ))),
                  child: Container(
                    padding: const EdgeInsets.only(right: 20),
                    width: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: books[i].img,
                          child: Container(
                            height: 170,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage(books[i].img),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0, 1),
                                      blurRadius: 1)
                                ]),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          books[i].name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\$' + books[i].price,
                          style: TextStyle(
                              color: kColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
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
