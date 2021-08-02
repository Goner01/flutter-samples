part of 'widgets.dart';

const int timeAnimation = 800;
const double offset = 60;

class HigherDesignDetail extends StatelessWidget {
  const HigherDesignDetail({
    required this.food,
  });

  final RecommendFood food;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.52,
      child: Stack(
        children: [
          Positioned(
            top: -290,
            right: -240,
            child: TweenAnimationBuilder(
              duration: Duration(milliseconds: timeAnimation),
              tween: Tween(begin: 0.0, end: 1.0),
              curve: Curves.decelerate,
              child: Container(
                width: size.width * 1.4,
                height: size.height,
                decoration:
                    BoxDecoration(color: food.color, shape: BoxShape.circle),
              ),
              builder: (context, double value, child) {
                return Transform.scale(
                  scale: value,
                  child: child,
                );
              },
            ),
          ),
          // Align(
          //     alignment: Alignment.bottomCenter,
          //     child: Container(
          //       height: size.height * 0.6,
          //       width: size.width * 0.74,
          //       decoration: BoxDecoration(
          //         boxShadow: [
          //           BoxShadow(
          //               color: Colors.black.withOpacity(0.18),
          //               offset: Offset(0, 6),
          //               blurRadius: 16)
          //         ],
          //         shape: BoxShape.circle,
          //       ),
          //     )),
          Positioned(
              top: -30,
              child: Hero(
                tag: food.name,
                child: Image.asset(
                  food.img,
                  height: size.height * 0.6,
                  width: size.width,
                ),
              )),
          Positioned(
            left: 14,
            bottom: 10,
            child: ShakeTransitionY(
              duration: Duration(milliseconds: 600),
              offset: offset,
              child: Container(
                height: 26,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: food.color, borderRadius: BorderRadius.circular(14)),
                child: Text(
                  'VEGAN',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: food.colorText),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 14,
            right: 14,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back_rounded)),
                Icon(Icons.more_vert_rounded)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
