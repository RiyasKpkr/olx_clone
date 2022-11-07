import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/components/page_title_bar.dart';
import 'package:olx_clone/components/under_part.dart';
import 'package:olx_clone/components/upside.dart';
import 'package:olx_clone/constants/constants.dart';
// import 'package:olx_clone/constants/constants.dart';
import 'package:olx_clone/screens/login_screen.dart';
import 'package:olx_clone/screens/main_screen.dart';
import 'package:olx_clone/screens/user_home_screen.dart';
import 'package:olx_clone/widgets/rounded_button.dart';
import 'package:olx_clone/widgets/rounded_input_field.dart';
import 'package:olx_clone/widgets/rounded_password_field.dart';

class Signupscreen extends StatefulWidget {
   Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  // @override
  // void initState() {
  //   authFunction(email: emailController.text, password: passwordController.text);
  //   super.initState();
  // }
  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  authFunction({required email,required password}){
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then(
          (value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Mainpage();
              },
            ),
          ),
        );;
  }

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
                            iconColor: kPrimaryColor,
                            hintText: 'Email',
                            icon: Icons.email,
                            controller: emailController,
                          ),
                          RoundedInputField(
                            hintText: 'UserName',
                            icon: Icons.person,
                            controller: userNameController,
                            iconColor: kPrimaryColor,
                          ),
                          RoundedPasswordField(
                            controller: passwordController,
                          ),
                          RoundedButton(
                            text: 'REGISTER',
                            press: () {
                              // setState(() {
                                authFunction(email: emailController.text, password: passwordController.text);
                              // });
                              
                            },
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