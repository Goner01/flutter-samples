part of 'widgets.dart';


class GalleryRent extends StatelessWidget {
  const GalleryRent({
    Key? key,
    required this.rent,
  }) : super(key: key);

  final Rent rent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kRentVerticalP),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kRentHorizontalP),
            child: Text(
              'Gallery',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: kRentVerticalP,
          ),
          SizedBox(
            height: 80,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: kRentHorizontalP),
              children: List.generate(4, (index) {
                final img = Container(
                  margin: EdgeInsets.only(right: (index == 3) ? 0 : kRentHorizontalP),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(rent.img),
                          fit: BoxFit.cover)),
                );

                return (index == 3) ? SizedBox(
                  height: 80,
                  width: 80,
                  child: Stack(
                    children: [
                      img,
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text('+5', style: TextStyle(color: Colors.white, fontSize: 24),)
                      )
                    ],)
                ) : img;
              }),
            ),
          )
        ],
      ),
    );
  }
}