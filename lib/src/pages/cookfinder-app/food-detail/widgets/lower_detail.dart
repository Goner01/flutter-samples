part of 'widgets.dart';

class LowerDesignDetail extends StatelessWidget {
  const LowerDesignDetail({
    required this.food,
  });

  final RecommendFood food;

  @override
  Widget build(BuildContext context) {
    final double offsetDesc = 100;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          ShakeTransitionY(
            offset: offset,
            duration: Duration(milliseconds: 600),
            child: Text(
              food.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ShakeTransitionY(
            offset: offset,
            duration: Duration(milliseconds: 600),
            child: Row(
              children: [
                ...List.generate(
                    5,
                    (i) => (i != 4)
                        ? Icon(
                            Icons.star_rate_rounded,
                            color: food.colorText,
                          )
                        : Icon(Icons.star_half_rounded, color: food.colorText)),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  '${food.stars}/5',
                  style: TextStyle(color: food.colorText),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          ShakeTransitionY(
            duration: Duration(milliseconds: timeAnimation),
            offset: offsetDesc,
            child: Text(
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          ShakeTransitionY(
            offset: offsetDesc,
            duration: Duration(milliseconds: timeAnimation),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.black12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '-',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 26),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '+',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  Text('\$${food.price}',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold))
                ]),
          ),
          const SizedBox(
            height: 34,
          ),
          ShakeTransitionY(
            offset: offsetDesc,
            duration: Duration(milliseconds: timeAnimation),
            child: Text(
              'About offer',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ShakeTransitionY(
            duration: Duration(milliseconds: timeAnimation),
            offset: offsetDesc,
            child: Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English." +
                  " Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.",
              style: TextStyle(color: Colors.grey, height: 1.5),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/CookFinderApp/avatar4.png'),
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                'Michael',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 68,
          ),
        ],
      ),
    );
  }
}
