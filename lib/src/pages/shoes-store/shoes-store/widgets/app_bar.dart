part of 'widgets.dart';

class AppBarShoes extends StatelessWidget {
  const AppBarShoes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight,
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        children: [
          Text(
            'Discover',
            style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          _IconAppBar(icon: Icons.search,),
          const SizedBox(width: 8,),
          _IconAppBar(icon: Icons.notifications_none_rounded,),
          const SizedBox(width: 12,),
        ],
      ),
    );
  }
}

class _IconAppBar extends StatelessWidget {
  final IconData icon;

  const _IconAppBar({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.08), shape: BoxShape.circle),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}