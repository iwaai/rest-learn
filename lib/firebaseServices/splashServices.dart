import 'dart:async';

import 'package:flutter/material.dart';

import '../Screens/loginScreen.dart';

class splashServices {
  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const loginScreen())));
  }
}
