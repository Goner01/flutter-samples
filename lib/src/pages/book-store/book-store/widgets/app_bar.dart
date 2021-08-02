
part of 'widgets.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/BookStoreApp/profile.jpg'),
            radius: 24,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Hello,\nCristobal',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: kColor),
          ),
          Spacer(),
          Icon(
            Icons.notifications_none,
            size: 32,
          ),
        ],
      ),
    );
  }
}