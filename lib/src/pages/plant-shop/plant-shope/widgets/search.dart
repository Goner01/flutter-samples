part of 'widgets.dart';

class SearchPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: 50,
      width: size.width * 0.9,
      margin: EdgeInsets.only(
        top: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: Offset(0,2),
            blurRadius: 4
          )
        ]
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Plant",
          hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.14), fontSize: 16, fontWeight: FontWeight.w600),
          contentPadding: EdgeInsets.only(left: 18, top: 15),
          suffixIcon: Icon(
            Icons.edit_road,
            color: Color(0xff14C49B),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black26,
          ),
          border: InputBorder.none,
        ),
        style: TextStyle(color: Colors.black),
        cursorColor: Color(0xff14C49B),
      ),
    );
  }
}