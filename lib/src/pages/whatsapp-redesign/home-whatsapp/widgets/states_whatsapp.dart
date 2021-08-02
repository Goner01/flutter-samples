part of 'widgets.dart';

class StatesWhatsApp extends StatelessWidget {
  const StatesWhatsApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 46,
            width: double.infinity,
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Color(0xff617882),
                          shape: BoxShape.circle,),
                      child: Icon(Icons.person_rounded, size: 36, color: Colors.white,),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 22,
                        width: 22,
                        padding: const EdgeInsets.all(1.5),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            shape: BoxShape.circle),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.add, size: 18, color: Colors.white,),
                        )
                      ),)
                  ],
                ),
                const SizedBox(width: kPaddignWhatsApp/2,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Mi estado', style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 15, fontWeight: FontWeight.w500),),
                    Text('Añade una actualización', style: TextStyle(color: Colors.grey),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}