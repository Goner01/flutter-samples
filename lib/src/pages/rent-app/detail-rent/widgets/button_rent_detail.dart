part of 'widgets.dart';

class ButtonRentDetail extends StatelessWidget {
  final String price;

  const ButtonRentDetail({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              const SizedBox(
                height: kRentVerticalP / 3,
              ),
              Text(
                '\$ $price / Year',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Container(
            height: 46,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 6),
                      blurRadius: 8)
                ],
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: colorGradientRent)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                splashColor: colorGradientRent[1],
                highlightColor: colorGradientRent[0],
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Rent Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
