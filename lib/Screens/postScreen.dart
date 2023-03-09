import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  static const routeName = '/post-Screen';
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => PostScreenState();
}

class PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Post Screen')),
    );
  }
}
