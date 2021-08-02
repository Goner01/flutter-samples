part of 'widgets.dart';

class AppBarChat extends StatelessWidget {
  final String img;
  final String name;
  final String lastConnection;

  const AppBarChat(
      {Key? key,
      required this.img,
      required this.name,
      required this.lastConnection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kPaddignWhatsApp / 2, vertical: kPaddignWhatsApp * 1.4),
      child: Row(
        children: [
          GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              )),
          Container(
            padding: const EdgeInsets.all(2),
            height: 32,
            width: 32,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                img,
              ),
            ),
          ),
          const SizedBox(
            width: kPaddignWhatsApp / 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,),
              ),
              Text(
                'Ultima conexión $lastConnection',
                style: TextStyle(
                    color: Colors.white, fontSize: 11, fontFamily: 'Konnect'),
              ),
            ],
          ),
          _IconsAppBar(
            icon: Icons.video_camera_back_rounded,
            color: Colors.white,
          ),
          _IconsAppBar(
            icon: Icons.call,
            color: Theme.of(context).primaryColor,
          ),
          _IconsAppBar(
            icon: Icons.more_horiz,
            color: Color(0xff696F83),
          ),
        ],
      ),
    );
  }
}

class _IconsAppBar extends StatelessWidget {
  final IconData icon;
  final Color color;

  const _IconsAppBar({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      margin: const EdgeInsets.only(left: kPaddignWhatsApp / 2),
      decoration:
          BoxDecoration(color: Color(0xff20232F), shape: BoxShape.circle),
      child: Icon(
        icon,
        color: color,
        size: 18,
      ),
    );
  }
}
