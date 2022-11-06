// import 'dart:html';

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:olx_clone/screens/main_screen.dart';
import 'package:olx_clone/screens/user_home_screen.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({super.key});

  @override
  State<SellScreen> createState() => _SellScreenState();
}

final ImagePicker _picker = ImagePicker();
File? imageFile;

TextEditingController nameController = TextEditingController();
TextEditingController descriptionController = TextEditingController();
TextEditingController priceController = TextEditingController();
// final String name= nameController.text;
// final String description = descriptionController.text;
// final String price = priceController.text;

class _SellScreenState extends State<SellScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * .35,
              color: Colors.indigo[100],
              child: PageView(
                children: [
                  GestureDetector(
                    onTap: () {
                      SnackBar snackbar = SnackBar(
                          backgroundColor: Colors.indigo[100],
                          duration: Duration(seconds: 6),
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  final XFile? photo = await _picker.pickImage(
                                      source: ImageSource.camera);
                                  setState(
                                    () {
                                      if (photo != null) {
                                        imageFile = File(photo.path);
                                      }
                                    },
                                  );
                                },
                                child: Text('camera'),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.indigo[900]),
                                  foregroundColor:
                                      MaterialStatePropertyAll(Colors.white),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  final XFile? image = await _picker.pickImage(
                                      source: ImageSource.gallery);
                                  setState(() {
                                    if (image != null) {
                                      imageFile = File(image.path);
                                    }
                                  });
                                },
                                child: Text('Gallery'),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.indigo[900]),
                                  foregroundColor:
                                      MaterialStatePropertyAll(Colors.white),
                                ),
                              ),
                            ],
                          ));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 5,
                          image: imageFile == null
                              ? AssetImage(
                                  'assets/add.png',
                                )
                              : FileImage(imageFile!) as ImageProvider,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Product Name',
                  labelText: 'Product Name',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  // enabledBorder: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  hintText: 'Product description',
                  labelText: 'description',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  // enabledBorder: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Product Price',
                  labelText: 'Product Price',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  // enabledBorder: InputBorder.none,
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.teal[900],
                ),
              ),
              onPressed: () async {
                final storageRef = FirebaseStorage.instance.ref();
                final String imageName =
                    DateTime.now().millisecondsSinceEpoch.toString();
                final imagesRef = storageRef.child(imageName);
                if (imageFile != null) {
                  try {
                    await imagesRef.putFile(imageFile!);
                    String downloadUrl = await imagesRef.getDownloadURL();
                    FirebaseFirestore.instance
                        .collection('product-details')
                        .add({
                      'image': downloadUrl,
                      'product': nameController.text,
                      'discrption': descriptionController.text,
                      'price': priceController.text,
                    }).whenComplete(() {
                      imageFile = null;
                      nameController.text = '';
                      descriptionController.text='';
                      priceController.text ='';
                      setState(() {
                      });
                    });
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(e.toString()),
                      ),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Upload Image'),
                    ),
                  );
                }
              },
              child: const Text(
                'Add Product',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
