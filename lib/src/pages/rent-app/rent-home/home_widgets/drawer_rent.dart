part of 'widgets.dart';

class DrawerRent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(color: Color(0xff0A8DDA), child: _ListOptions()),
    );
  }
}

class _ListOptions extends StatefulWidget {
  @override
  __ListOptionsState createState() => __ListOptionsState();
}

class __ListOptionsState extends State<_ListOptions> {
  int selected = 0;

  final List<Options> options = [
    Options(icon: Icons.home_rounded, titulo: 'Home'),
    Options(icon: Icons.person_rounded, titulo: 'Profile'),
    Options(icon: Icons.location_on_outlined, titulo: 'Nearby'),
    Options(icon: Icons.turned_in_not, titulo: 'Bookmark'),
    Options(icon: Icons.notifications_none_rounded, titulo: 'Notification'),
    Options(icon: Icons.messenger_outline_rounded, titulo: 'Message'),
    Options(icon: Icons.settings, titulo: 'Setting'),
    Options(icon: Icons.help_outline, titulo: 'Help'),
    Options(icon: Icons.logout, titulo: 'Logout'),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView.separated(
        itemCount: options.length,
        separatorBuilder: (context, i) {
          final num1 = i + 1;
          if (num1 % 3 == 0) {
            return Padding(
              padding: EdgeInsets.only(right: size.width * 0.5),
              child: Divider(
                height: 4,
                color: Colors.white,
              ),
            );
          } else {
            return Container();
          }
        },
        padding: EdgeInsets.only(top: size.height * 0.14),
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = i;
              });
            },
            child: Container(
                height: 48,
                margin: EdgeInsets.only(
                    bottom: kRentVerticalP / 2.5, right: size.width * 0.56),
                decoration: BoxDecoration(
                    color: i == selected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        bottomRight: Radius.circular(60))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: kRentHorizontalP,
                    ),
                    (options[i].titulo == 'Notification' ||
                            options[i].titulo == 'Message')
                        ? Stack(
                            children: [
                              Icon(
                                options[i].icon,
                                color:
                                    i == selected ? Color(0xff0A8DDA) : Colors.white,
                              ),
                              Positioned(
                                right: 1,
                                top: 1,
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              )
                            ],
                          )
                        : Icon(
                            options[i].icon,
                            color: i == selected ? Color(0xff0A8DDA) : Colors.white,
                          ),
                    const SizedBox(
                      width: kRentHorizontalP,
                    ),
                    Text(
                      options[i].titulo,
                      style: TextStyle(
                        fontSize: 16,
                        color: i == selected ? Color(0xff0A8DDA) : Colors.white,
                      ),
                    ),
                  ],
                )),
          );
        });
  }
}

class Options {
  IconData icon;
  String titulo;

  Options({required this.icon, required this.titulo});
}
