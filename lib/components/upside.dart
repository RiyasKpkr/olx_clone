import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/constants/constants.dart';

class Upside extends StatelessWidget {
  const Upside({super.key, required this.imgUrl});
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height / 2,
          width: size.width,
          color: kPrimaryColor,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Image.asset(
              imgUrl,
              height: 100,
              alignment: Alignment.topCenter,
              scale: 1,
            ),
          ),
        ),
        iconButton(context),
      ],
    );
  }
}

iconButton(BuildContext context) {
  return IconButton(
    color: Colors.white,
    iconSize: 28,
    icon: Icon(CupertinoIcons.arrow_left),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
