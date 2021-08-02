part of 'widgets.dart';

class AllPlants extends StatelessWidget {
  AllPlants({Key? key}) : super(key: key);

  final List category = ['All plants', 'Indoor', 'Outdoor', 'Office'];

  @override
  Widget build(BuildContext context) {
    final List<Widget> list = List.generate(category.length, (i) => 
      Container(
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: (i == 0 ) ? 
            BorderRadius.only(bottomLeft: Radius.circular(12), topLeft: Radius.circular(12)) :
            (i == category.length-1) ? 
            BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)) :
            BorderRadius.circular(0),
        ),
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            color:  i==0 ? Color(0xff14C49B):Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
            BoxShadow(
              color: i==0 ? Color(0xff14C49B).withOpacity(0.9) : Colors.transparent,
              offset: Offset(0,1),
              blurRadius: 4
            )
          ]
          ),
          child: Text(
            category[i], 
            style: TextStyle(
              color: i==0 ? Colors.white : Colors.grey, 
              fontWeight: FontWeight.bold),)
        ),
      )
    );

    return SizedBox(
      height: 44,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10),
        children: list,
      ),
    );
  }
}