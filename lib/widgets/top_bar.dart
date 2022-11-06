import 'package:flutter/material.dart';
import 'package:olx_clone/widgets/rounded_input_field.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                print('location');
              },
              icon: Icon(Icons.my_location),
            ),
            Text(
              'India'.toUpperCase(),
              style: TextStyle(),
            ),
            Icon(
              Icons.expand_more,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RoundedInputField(
              icon: Icons.search,
              iconColor: Colors.blueGrey,
              hintText: 'Fird cars, mobile Phones and more ....',
            ),
            Icon(Icons.notifications)
          ],
        ),
      ],
    );
  }
}
