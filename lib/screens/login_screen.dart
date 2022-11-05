import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/components/page_title_bar.dart';
import 'package:olx_clone/components/under_part.dart';
import 'package:olx_clone/components/upside.dart';
import 'package:olx_clone/constants/constants.dart';
import 'package:olx_clone/screens/signup_screen.dart';
import 'package:olx_clone/widgets/rounded_button.dart';
import 'package:olx_clone/widgets/rounded_input_field.dart';
import 'package:olx_clone/widgets/rounded_password_field.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // @override
  // void initState() {
  //   loginFunction(email: emailController.text, password: passwordController.text);
  //   super.initState();
  // }

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();


  loginFunction({required email,required password}){
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
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
                  imgUrl: 'assets/login-page.png',
                ),
                PageTitleBar(
                  title: 'Login to your account',
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
                            controller: emailController,
                          ),
                          RoundedPasswordField(
                            controller: passwordController,
                          ),
                          RoundedButton(
                            text: 'LOGIN',
                            press: () {
                              // setState(() {
                                loginFunction(email: emailController.text, password: passwordController.text);
                              // });
                              
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          UnderPart(
                            title: 'Dont\'t have an account?',
                            NavigatorText: 'Register here',
                            onTap: () {
                              print('login');
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Signupscreen();
                              }));
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
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
