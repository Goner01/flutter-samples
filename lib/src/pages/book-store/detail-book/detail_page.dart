import 'package:flutter/material.dart';
import 'package:github/src/pages/book-store/book-store/book_store.dart';
import 'package:github/src/pages/book-store/detail-book/widgets/widgets.dart';

class DetailPage extends StatelessWidget {
  final Book book;

  const DetailPage({required this.book});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 26, right: kPadding, left: kPadding),
            child: Column(
              children: [
                CustomAppBarDetail(),
                BookImage(
                  size: size,
                  img: book.img,
                ),
                const SizedBox(
                  height: 14,
                ),
                Information(size: size, title: book.name, autor: book.autor, price: book.price,),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[200],
                ),
                const SizedBox(
                  height: 12,
                ),
                _Description(),
                SizedBox(
                  height: 68,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter, 
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: BottomButtons(size: size),
            )
          ),
        ],
      ),
    ));
  }
}


class _Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(color: kColor, fontSize: 22),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
          style: TextStyle(
              color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

