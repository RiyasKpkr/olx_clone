import 'package:flutter/material.dart';
import 'package:olx_clone/constants/constants.dart';
import 'package:olx_clone/widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({super.key, this.hintText, this.icon = Icons.person, this.controller,required this.iconColor});
  final String? hintText;
  final IconData icon;
  final Color iconColor;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: iconColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
