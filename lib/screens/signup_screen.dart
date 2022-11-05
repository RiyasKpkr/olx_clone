import 'package:flutter/material.dart';
import 'package:olx_clone/components/page_title_bar.dart';
import 'package:olx_clone/components/under_part.dart';
import 'package:olx_clone/components/upside.dart';
import 'package:olx_clone/constants/constants.dart';
import 'package:olx_clone/screens/login_screen.dart';
import 'package:olx_clone/widgets/rounded_button.dart';
import 'package:olx_clone/widgets/rounded_input_field.dart';
import 'package:olx_clone/widgets/rounded_password_field.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Upside(
                  imgUrl: 'assets/signp-screen.png',
                ),
                PageTitleBar(
                  title: 'Create New Account',
                ),
                Padding(
                  padding: EdgeInsets.only(top: 320),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Form(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          RoundedInputField(
                            hintText: 'Email',
                            icon: Icons.email,
                          ),
                          RoundedInputField(
                            hintText: 'UserName',
                            icon: Icons.person,
                          ),
                          RoundedPasswordField(),
                          RoundedButton(
                            text: 'REGISTER',
                            press: () {},
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          UnderPart(
                            title: 'Already have an account?',
                            NavigatorText: 'Login here',
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return LoginScreen();
                              }));
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}