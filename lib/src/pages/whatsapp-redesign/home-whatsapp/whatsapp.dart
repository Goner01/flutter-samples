import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github/src/pages/whatsapp-redesign/bloc/theme_bloc.dart';
import 'package:github/src/pages/whatsapp-redesign/home-whatsapp/widgets/widgets.dart';
import 'package:github/src/pages/whatsapp-redesign/home_whatsapp.dart';

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  int _currentIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    MessagesWhatsApp(),
    GroupsWhatsApp(),
    StatesWhatsApp(),
    CallsWhatsApp()
  ];

  @override
  Widget build(BuildContext context) {
    final themeProvider = ThemeInheritedWidget.of(context)!.themeBloc;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        leading: Container(),
        leadingWidth: 0,
        elevation: 0,
        actions: [
          _IconsAppBar(
            icon: Icons.bedtime,
            callback: () => themeProvider!.setTheme(
                themeProvider.getTheme() == MyThemes.darkTheme
                    ? MyThemes.lightTheme
                    : MyThemes.darkTheme),
          ),
          _IconsAppBar(
            icon: Icons.search,
            callback: () => print('search'),
          ),
          _IconsAppBar(
            icon: Icons.more_horiz,
            callback: () {},
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: kPaddignWhatsApp / 2,
          ),
          StoriesWhatsApp(),
          const SizedBox(
            height: kPaddignWhatsApp,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  )),
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: kPaddignWhatsApp * 1.2,
                      left: kPaddignWhatsApp * 1.2,
                      right: kPaddignWhatsApp * 1.2),
                  child: _children[_currentIndex]),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => buildShowDialog(context),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        elevation: 1,
      ),
      bottomNavigationBar: Container(
        height: kBottomNavigationBarHeight * 1.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _NavBarItem(
              name: 'Chats',
              notifications: 10,
              isSelected: _currentIndex == 0,
              callback: () => _selectedTab(0),
            ),
            _NavBarItem(
              name: 'Grupos',
              notifications: 5,
              isSelected: _currentIndex == 1,
              callback: () => _selectedTab(1),
            ),
            _NavBarItem(
              name: 'Estados',
              notifications: 0,
              isSelected: _currentIndex == 2,
              callback: () => _selectedTab(2),
            ),
            _NavBarItem(
              name: 'Llamadas',
              notifications: 0,
              isSelected: _currentIndex == 3,
              callback: () => _selectedTab(3),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String name;
  final int notifications;
  final bool isSelected;
  final VoidCallback callback;

  const _NavBarItem(
      {Key? key,
      required this.name,
      required this.notifications,
      required this.isSelected,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: SizedBox(
        height: kBottomNavigationBarHeight * 1.1,
        width: 86,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                  alignment: Alignment.center,
                  height: 36,
                  width: 76,
                  decoration: BoxDecoration(
                      color: isSelected
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(60)),
                  child: Text(
                    name,
                    style: TextStyle(
                        color: isSelected
                            ? Colors.white
                            : Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )),
            ),
            notifications > 0
                ? Positioned(
                    right: 4,
                    top: 2,
                    child: Container(
                      height: 22,
                      width: 22,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: isSelected ? Colors.white : Colors.transparent,
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Text(
                          notifications.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}

class _IconsAppBar extends StatelessWidget {
  final IconData icon;
  final VoidCallback callback;

  const _IconsAppBar({Key? key, required this.icon, required this.callback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 38,
        width: 38,
        margin: const EdgeInsets.only(right: 18),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryVariant,
            shape: BoxShape.circle),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
