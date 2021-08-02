import 'package:flutter/material.dart';

class CustomTitleWsp extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const CustomTitleWsp({Key? key, required this.title, required this.subtitle, this.icon = Icons.delete_forever_outlined}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              icon,
              size: 30,
            )
          ],
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}