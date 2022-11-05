import 'package:flutter/material.dart';
import 'package:olx_clone/constants/constants.dart';
import 'package:olx_clone/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          hintText: 'Password',
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
