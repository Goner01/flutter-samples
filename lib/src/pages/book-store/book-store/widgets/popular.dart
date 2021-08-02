part of 'widgets.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Popular',
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
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 120,
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/BookStoreApp/3.jpg'),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0, 1),
                            blurRadius: 4)
                      ]),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Le Petit Prince",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: kColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Antoine de Saint-Exupéry',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text('  4.5')
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.bookmark_border,
                      color: Colors.black54,
                    ),
                    Spacer(),
                    Text(
                      '\$18.99',
                      style: TextStyle(
                          color: kColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
