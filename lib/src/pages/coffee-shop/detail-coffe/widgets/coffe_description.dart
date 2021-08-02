part of 'widgets.dart';

final description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

class CoffeDescription extends StatelessWidget {
  const CoffeDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return ShakeTransitionY(
      duration: Duration(milliseconds: 800),
      offset: height*.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
                color: primaryCoffeColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4,),
          Text(description, style: TextStyle(
            fontSize: 14,
            color: Color(0xff7C6E68),
            fontWeight: FontWeight.w500
          ),),
          const SizedBox(height: coffePadding * 1.5,),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: primaryCoffeColor,
              borderRadius: BorderRadius.circular(14)
            ),
            child: Text('Buy now', style: TextStyle(fontSize: 16, color: Color(0xffB08B59), fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}