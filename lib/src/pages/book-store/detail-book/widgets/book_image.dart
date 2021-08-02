part of 'widgets.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    required this.img,
    required this.size,
  });

  final Size size;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.466,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
          color: Color(0xFFD7D9DB).withOpacity(0.44),
          borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 40, horizontal: size.width * 0.22),
        child: Hero(
          tag: img,
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.24),
                  offset: Offset(0, 4),
                  blurRadius: 12)
            ]),
            child: Image(
              image: AssetImage(
                img,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
