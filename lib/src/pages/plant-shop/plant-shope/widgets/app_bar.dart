part of 'widgets.dart';

class CustomAppBarPlant extends StatelessWidget {
  const CustomAppBarPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.spa_outlined, color: Color(0xff14C49B),),
                  const SizedBox(width: 6,),
                  Text('Pot', style: TextStyle(color: Color(0xff47435D), fontSize: 22, fontWeight: FontWeight.bold),),
                  Text(' it.', style: TextStyle(color: Color(0xff14C49B), fontSize: 22, fontWeight: FontWeight.bold),)                     
                ],
              ),
              const SizedBox(height: 4,),
              Text('Find the perfect plant for you!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54),)
            ],
          ),
          Spacer(),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Icon(Icons.notifications_none, color: Colors.grey,),
          )
        ],
      ),
    );
  }
}