part of 'widgets.dart';

class SearchRent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kRentHorizontalP, vertical: kRentVerticalP),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: size.width * 0.74,
            decoration: BoxDecoration(
                color: Color(0xffF7F7F7),
                borderRadius: BorderRadius.circular(8)),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search address, or near you",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.search,
                ),
                focusColor: colorGradientRent[1],
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.black),
              cursorColor: colorGradientRent[1],
            ),
          ),
          Expanded(child: Container()),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: colorGradientRent)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                splashColor: colorGradientRent[1],
                highlightColor: colorGradientRent[0],
                child: Container(
                  alignment: Alignment.center,
                  child: FaIcon(
                    FontAwesomeIcons.slidersH,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
