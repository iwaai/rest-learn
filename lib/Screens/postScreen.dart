import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './loginScreen.dart';
import '../utils/utilitites.dart';

class PostScreen extends StatefulWidget {
  static const routeName = '/post-Screen';
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => PostScreenState();
}

class PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Text( 
            'Post Screen',
            style: TextStyle(color: Colors.white, fontSize: 40),
          )),
          IconButton(
              onPressed: () {
                auth.signOut().then((value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const loginScreen())).onError(
                    (error, stackTrace) =>
                        utilities().showMsg(error.toString())));
              },
              icon: const Icon(Icons.logout_rounded))
        ],
      ),
    );
  }
}
