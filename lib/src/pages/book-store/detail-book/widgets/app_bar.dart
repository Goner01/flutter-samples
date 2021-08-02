part of 'widgets.dart';

class CustomAppBarDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _IconAppBar(
          icon: Icons.arrow_back_ios,
          callback: () => Navigator.pop(context),
          pad: 6,
        ),
        Text(
          'Detail',
          style: TextStyle(
              color: kColor, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        _IconAppBar(
          icon: Icons.more_horiz,
          callback: () {},
          pad: 0,
        ),
      ],
    );
  }
}

class _IconAppBar extends StatelessWidget {
  final IconData icon;
  final VoidCallback callback;
  final double pad;

  const _IconAppBar(
      {required this.icon, required this.callback, required this.pad});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
            color: Color(0xFFD7D9DB).withOpacity(0.44),
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: EdgeInsets.only(left: pad),
          child: Icon(
            icon,
            size: 20,
          ),
        ),
      ),
    );
  }
}
