part of 'widgets.dart';

class More extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: size.height * 0.11,
      left: 12,
      right: 12,
      child: SizedBox(
        width: size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _CardMore(size: size),
                _CardMore(size: size),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CardMore extends StatelessWidget {
  const _CardMore({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .4,
      height: size.height * 0.24,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 1),
                blurRadius: 4)
          ]),
      child: Stack(
        children: [
          Container(
            color: Color(0xffFA3C67),
            margin: const EdgeInsets.only(top: 8, left: 8),
            padding: const EdgeInsets.symmetric(
                horizontal: 2, vertical: 22),
            child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  'NEW',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Positioned(
              top: 8,
              right: 8,
              child: Icon(Icons.favorite_border)),
          Align(
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: 0.4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Image.asset(
                    'assets/ShoesStore/2.png',
                    height: size.height * 0.14,
                  ),
                ),
              )),
          Positioned(
            bottom: 10,
            child: Container(
              width: size.width * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('NIKE AIR-MAX', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                  Text('\$170.0')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

