import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:olx_clone/screens/category_screen.dart';
// import 'package:olx_clone/widgets/bottom_navigation_bar.dart';
import 'package:olx_clone/widgets/top_bar.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: size.height * 0.17,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Topbar(),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            // SizedBox(height:10),
            Column(
              children: [
                Container(
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 15, right: 15),
                  height: 175,
                  width: size.width,
                  // width: size.width * 1,
                  // color: Colors.blueGrey,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: Lottie.asset(
                    'assets/home-lottie.json',
                    // height: 1,
                    // width: 50,
                    // fit: BoxFit.fitHeight,
                    repeat: true,
                    reverse: true,
                    animate: true,
                  ),
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Buy produact',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Sell produact',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CategoryScreen(),
          ],
        ),
        // bottomNavigationBar: BottumNavigatonBarWidget(),
      ),
    );
  }
}
