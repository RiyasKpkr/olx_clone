import 'package:flutter/material.dart';
import 'package:olx_clone/widgets/icon_text.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Categories'),
            Text('More'),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children:const [
                        IconAndText(
                          title: 'car',
                          icon: Icons.drive_eta,
                          iconColor: Colors.red,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconAndText(
                          title: 'Properties',
                          icon: Icons.business,
                          iconColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconAndText(
                          title: 'mobile',
                          icon: Icons.smartphone,
                          iconColor: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconAndText(
                          title: 'jobs',
                          icon: Icons.work,
                          iconColor: Colors.amberAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconAndText(
                          title: 'Bikes',
                          icon: Icons.two_wheeler,
                          iconColor: Colors.deepPurple,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconAndText(
                          title: 'electronics',
                          icon: Icons.desktop_windows,
                          iconColor: Colors.yellow,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconAndText(
                          title: 'vehicle',
                          icon: Icons.no_crash,
                          iconColor: Colors.tealAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconAndText(
                          title: 'Furniture',
                          icon: Icons.chair,
                          iconColor: Colors.pinkAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconAndText(
                          title: 'fasion',
                          icon: Icons.wc,
                          iconColor: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
