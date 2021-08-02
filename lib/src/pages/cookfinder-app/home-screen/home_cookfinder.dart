import 'package:flutter/material.dart';
import 'package:github/src/pages/cookfinder-app/home-screen/widgets/widgets.dart';

class HomeCookfinderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: false,
        leadingWidth: 0,
        title: Text.rich(
          TextSpan(
            text: 'Cook',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
            children: <TextSpan>[
              TextSpan(
                  text: 'finder ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffE27F4F),
                      fontSize: 26)),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
              size: 32,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                CategoriesView(),
                divider(),
                Recommended(),
                divider(),
                TopChefs(),
                divider(),
                Events(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavBar(),
          ),
        ],
      ),
    );
  }

  Column divider() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Divider(),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight + 12,
      decoration: BoxDecoration(
        color: Color(0xff1D1D1B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.grey,
            size: 30,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
    );
  }
}
