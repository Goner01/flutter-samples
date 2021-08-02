part of 'widgets.dart';

class MeasureAndQty extends StatelessWidget {
 MeasureAndQty({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  final List measures = ['S', 'M', 'L'];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select size',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff47435D),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 48,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.03),
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          measures.length,
                          (i) => Container(
                                width: 50,
                                height: 34,
                                margin: EdgeInsets.only(right: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: i != 1
                                        ? Colors.transparent
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: i != 1 ? Colors.transparent :Colors.black12,
                                        offset: Offset(0,1),
                                        blurRadius: 8
                                      )
                                    ]
                                ),
                                child: Text(
                                  measures[i],
                                  style: TextStyle(
                                      color: i != 1 ? Colors.grey[400] :  Color(0xff14C49B),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.grey[400],
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  Container(
                    height: 48,
                    width: size.width *0.32,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.03),
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('-', style: TextStyle(color: Colors.grey[400], fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('1', style: TextStyle(color: Color(0xff14C49B)),),
                        Text('+', style: TextStyle(color: Colors.grey[400], fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
