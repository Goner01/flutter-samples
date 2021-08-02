import 'package:flutter/material.dart';

import 'package:github/src/pages/rent-app/rent-home/home_widgets/widgets.dart';

const kRentHorizontalP = 16.0;
const kRentVerticalP = 18.0;
const colorGradientRent = [Color(0xff83CAF4), Color(0xff31A0E0)];

class RentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [DrawerRent(), HomePage()],
      ),
    ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  void openDrawer() {
    setState(() {
      xOffset = 220;
      yOffset = 50;
      scaleFactor = 0.86;
      isDrawerOpen = true;
    });
  }

  void closeDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 350),
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isDrawerOpen ? 20 : 0.0),
              bottomLeft: Radius.circular(isDrawerOpen ? 20 : 0.0))),
      child: Column(
        children: [
          AppBarRent(
            openDrawer: openDrawer,
            closeDrawer: closeDrawer,
            isDrawerOpen: isDrawerOpen,
          ),
          SearchRent(),
          FilterRent(),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(
                    height: kRentVerticalP / 2,
                  ),
                  NearFromYou(),
                  const SizedBox(
                    height: kRentVerticalP * 1.2,
                  ),
                  BestForYou(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

