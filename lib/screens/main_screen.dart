import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:olx_clone/screens/my_ads_screen.dart';
import 'package:olx_clone/screens/profile_screen.dart';
import 'package:olx_clone/screens/user_chat_screen.dart';
import 'package:olx_clone/screens/user_home_screen.dart';
import 'package:olx_clone/screens/user_sell_screen.dart';
import 'package:olx_clone/widgets/bottom_navigation_bar.dart';

class Mainpage extends StatelessWidget {
  Mainpage({super.key});

  final _pages = [
    UserHomeScreen(),
    ChatScrenn(),
    SellScreen(),
    MyAdsScreen(),
    UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottumNavigatonBarWidget(),
    );
  }
}
