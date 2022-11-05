import 'package:flutter/material.dart';
import 'package:olx_clone/constants/constants.dart';

class PageTitleBar extends StatelessWidget {
  const PageTitleBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 260),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            )),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }
}
