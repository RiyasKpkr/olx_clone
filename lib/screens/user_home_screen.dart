import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/screens/onboard_screen.dart';
import 'package:olx_clone/widgets/product_list.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          centerTitle: true,
          title: const Text('OLX Clone'),
          actions: [
            IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut().then(
                      (value) => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return OnboardScreen();
                          },
                        ),
                      ),
                    );
              },
              icon: Icon(
                Icons.logout,
              ),
            ),
          ],
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('product-details')
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              var productList = snapshot.data!.docs;
              return ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return ProductList(
                    imageUrl: productList[index]['image'],
                    productName: productList[index]['product'],
                    description: productList[index]['discription'],
                    price: productList[index]['price'],
                  );
                },
              );
            } else {
              return Text(snapshot.error.toString());
            }
          },
        ),
      ),
    );
  }
}
