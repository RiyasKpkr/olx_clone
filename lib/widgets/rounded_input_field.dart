import 'package:flutter/material.dart';
import 'package:olx_clone/constants/constants.dart';
import 'package:olx_clone/widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({super.key, this.hintText, this.icon = Icons.person});
  final String? hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}