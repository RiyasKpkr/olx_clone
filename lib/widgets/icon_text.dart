import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({
    super.key,
    required this.title,
    required this.icon,
    required this.iconColor,
  });

  final String title;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 50,
        ),
        SizedBox(height: 5,),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
