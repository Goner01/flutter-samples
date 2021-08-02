part of 'widgets.dart';

class AppBarRent extends StatelessWidget {
  final VoidCallback closeDrawer;
  final VoidCallback openDrawer;
  final bool isDrawerOpen;

  const AppBarRent({Key? key, required this.closeDrawer, required this.openDrawer, required this.isDrawerOpen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: Colors.transparent,
      margin: EdgeInsets.symmetric(horizontal: kRentHorizontalP),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: isDrawerOpen ? closeDrawer : openDrawer,
                    child: Text(
                      'Jakarta',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 26),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  FaIcon(
                    FontAwesomeIcons.chevronDown,
                    size: 16,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Stack(
            children: [
              Icon(
                Icons.notifications,
                size: 32,
              ),
              Positioned(
                top: 6,
                right: 6,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
