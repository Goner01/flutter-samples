part of 'widgets.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kRentHorizontalP,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: kRentVerticalP,
          ),
          Text(
            description,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: kRentVerticalP,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/BookStoreApp/profile.jpg'),
              ),
              const SizedBox(
                width: kRentVerticalP,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Garry Allen', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  Text('Owner', style: TextStyle(color: Colors.grey),)                     
                ],
              ),
              Spacer(),
              _IconCallAndMessage(icon: Icons.call),
              const SizedBox(
                width: kRentVerticalP,
              ),
              _IconCallAndMessage(icon: Icons.message)
            ],
          )
        ],
      ),
    );
  }
}

class _IconCallAndMessage extends StatelessWidget {
  final IconData icon;

  const _IconCallAndMessage({Key? key, required this.icon}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      width: 36,
      decoration: BoxDecoration(
          color: Color(0xff81C4E9), borderRadius: BorderRadius.circular(8)),
      child: Icon(
        icon,
        size: 18,
        color: Colors.white
      ),
    );
  }
}
