// import 'package:flutter/foundation.dart';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:olx_clone/screens/login_screen.dart';
import 'package:olx_clone/screens/signup_screen.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 450,
              // width: 392.7,
              color: Colors.white,
              child: Image.asset(
                'assets/olx_logo.png',
                color: Colors.teal[900],
              ),
            ),
            Positioned(
              top: 350,
              left: 175,
              child: Text(
                'India'.toUpperCase(),
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 268.6,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.teal[900],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // print('login');
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                child: Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.login,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'log in'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.teal[900],
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Flexible(
                      child: Container(
                    height: 1,
                    color: Colors.white,
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                      child: Container(
                    height: 1,
                    color: Colors.white,
                  )),
                  const SizedBox(
                    width: 25,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Signupscreen();
                  }));
                  // print('sign up');
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Signupscreen();
                        },
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.login,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        'Sign up'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.teal[900],
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
