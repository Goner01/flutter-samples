import 'package:flutter/material.dart';
import 'package:github/src/pages/book-store/book-store/widgets/widgets.dart';

// 0xFF595859
//0xff717071
const kColor = Color(0xFF757575);
const kPadding = 12.0;

class BookStorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 26),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CustomAppBar(),
            SearchBook(),
            const SizedBox(
              height: 26,
            ),
            CategoryBook(),
            const SizedBox(
              height: 26,
            ),
            BestSeller(),
            Popular()
          ],
        ),
      ),
    ));
  }
}

class Book {
  final String name;
  final String price;
  final String img;
  final String autor;

  Book({required this.name, required this.price, required this.img, required this.autor});
}

class SlideShow extends StatelessWidget {
  const SlideShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}
