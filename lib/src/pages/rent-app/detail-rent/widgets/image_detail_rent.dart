part of 'widgets.dart';

class ImageDetailRent extends StatelessWidget {
  const ImageDetailRent({
    Key? key,
    required this.size,
    required this.rent,
  }) : super(key: key);

  final Size size;
  final Rent rent;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: size.height * 0.4,
        margin: const EdgeInsets.symmetric(
            horizontal: kRentHorizontalP, vertical: kRentHorizontalP),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(
                rent.img,
              ),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0.2, 0.7],
                      colors: [Colors.black45, Colors.transparent])),
            ),
            Padding(
              padding: EdgeInsets.all(kRentHorizontalP),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _IconsImgDetail(
                        icon: Icons.arrow_back_ios_new_rounded,
                        callback: () => Navigator.pop(context),
                      ),
                      Spacer(),
                      _IconsImgDetail(
                        icon: Icons.turned_in_not,
                        callback: () {},
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    rent.title,
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  const SizedBox(height: kRentVerticalP * .4,),
                  Text(
                    rent.location,
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                  const SizedBox(height: kRentVerticalP,),
                  Row(
                    children: [
                      _IconBedAndBath(icon: FontAwesomeIcons.bed,),
                      const SizedBox(
                        width: kRentHorizontalP * .6,
                      ),
                      Text(
                        '${rent.bedroom} Bedroom',
                        style: TextStyle(color: Colors.white70),
                      ),
                      const SizedBox(
                        width: kRentHorizontalP,
                      ),
                      _IconBedAndBath(icon: FontAwesomeIcons.bath),
                      const SizedBox(
                        width: kRentHorizontalP * .6,
                      ),
                      Text(
                        '${rent.bathroom} Bathroom',
                        style: TextStyle(color: Colors.white70,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class _IconBedAndBath extends StatelessWidget {
  final IconData icon;

  const _IconBedAndBath({Key? key, required this.icon}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      width: 36,
      decoration: BoxDecoration(
          color: Colors.white12, borderRadius: BorderRadius.circular(8)),
      child: FaIcon(
        icon,
        size: 18,
        color: Colors.white,
      ),
    );
  }
}

class _IconsImgDetail extends StatelessWidget {
  final IconData icon;
  final VoidCallback callback;

  const _IconsImgDetail({Key? key, required this.icon, required this.callback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 40,
        width: 40,
        decoration:
            BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
