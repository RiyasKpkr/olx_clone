import 'package:flutter/material.dart';
import 'package:olx_clone/constants/constants.dart';

class UnderPart extends StatelessWidget {
  const UnderPart({
    super.key,
    required this.NavigatorText,
    required this.onTap,
    required this.title,
  });
  final String title;
  final String NavigatorText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 20,),
        InkWell(
          onTap: () {
            onTap();
          },
          child: Text(
            NavigatorText,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
