part of 'widgets.dart';

class TopImgCoffe extends StatefulWidget {
  const TopImgCoffe({
    Key? key,
    required this.size,
    required this.coffe,
    required this.heroTag,
  }) : super(key: key);

  final Size size;
  final Coffe coffe;
  final String heroTag;

  @override
  _TopImgCoffeState createState() => _TopImgCoffeState();
}

class _TopImgCoffeState extends State<TopImgCoffe>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animationOpacity;
  late Animation _animationScale;
  double? opacity;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _animationOpacity = CurveTween(
      curve: Interval(0.1, 0.7, curve: Curves.decelerate),
    ).animate(_controller);
    _animationScale = CurveTween(
      curve: Interval(0.4, 1.0, curve: Curves.decelerate),
    ).animate(_controller);
    _controller.forward(from: 0.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * .35,
      child: Stack(
        children: [
          Positioned(
            top: -widget.size.height * .04,
            left: widget.size.width * .084,
            child: CustomGradientOutline(
              strokeWidth: 2,
              radius: 300,
              gradient: LinearGradient(
                stops: [0.5, 0.7],
                colors: [Color(0xffEBDBCD).withOpacity(0.2), Color(0xffD4C4B7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              height: widget.size.height * .38,
              width: widget.size.width * .74,
            ),
          ),
          Positioned(
            top: -widget.size.height * .04,
            left: widget.size.width * .084,
            child: AnimatedBuilder(
              animation: _animationOpacity,
              builder: (context, child) {
                final valueOpacity = (1 - _animationOpacity.value);
                return Container(
                  height: (widget.size.height * .38),
                  width: (widget.size.width * .74) * valueOpacity,
                  color: Theme.of(context).scaffoldBackgroundColor,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: '${widget.coffe.name}${widget.heroTag}',
              child: Image.asset(
                widget.coffe.img,
                height: widget.size.height * .3,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: widget.size.width * .6,
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomScaleTransition(
                    duration: Duration(milliseconds: 1000),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: coffePadding * 1.1),
                      child: _SizeCoffe(
                        sizeCoffe: 'S',
                        animation: _animationScale,
                      ),
                    ),
                  ),
                  CustomScaleTransition(
                    duration: Duration(milliseconds: 1000),
                    child: _SizeCoffe(
                      sizeCoffe: 'M',
                      isSelected: true,
                      animation: _animationScale,
                    ),
                  ),
                  CustomScaleTransition(
                    duration: Duration(milliseconds: 1000),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: coffePadding * 1.1),
                      child: _SizeCoffe(
                        sizeCoffe: 'L',
                        animation: _animationScale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _SizeCoffe extends AnimatedWidget {
  final String sizeCoffe;
  final bool isSelected;
  final Animation animation;

  const _SizeCoffe(
      {Key? key,
      required this.sizeCoffe,
      this.isSelected = false,
      required this.animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.scale(
          scale: animation.value,
          child: child,
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            color: isSelected ? primaryCoffeColor : Color(0xffEBDBCD),
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? primaryCoffeColor : Color(0xffD4C4B7),
              width: 2,
            )),
        child: Text(
          sizeCoffe,
          style: TextStyle(
              color: isSelected ? secundaryCoffeColor : primaryCoffeColor),
        ),
      ),
    );
  }
}

class CustomGradientOutline extends StatelessWidget {
  final _GradientPainter _painter;
  final double _radius;
  final double height;
  final double width;

  CustomGradientOutline(
      {required double strokeWidth,
      required double radius,
      required Gradient gradient,
      required this.height,
      required this.width})
      : this._painter = _GradientPainter(
            strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        this._radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_radius),
          // shape: BoxShape.circle
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter(
      {required double strokeWidth,
      required double radius,
      required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth,
        size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(
        innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
