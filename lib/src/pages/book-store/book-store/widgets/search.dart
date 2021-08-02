part of 'widgets.dart';

class SearchBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: 50,
      width: size.width * 0.9,
      margin: EdgeInsets.only(
        top: 24,
      ),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(6)),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Books",
          hintStyle: TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),
          contentPadding: EdgeInsets.only(left: 18, top: 15),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          border: InputBorder.none,
        ),
        style: TextStyle(color: Colors.black),
        cursorColor: Color(0xff45AE9F),
      ),
    );
  }
}