import 'dart:js';

import 'package:flutter/material.dart';
import 'package:heloo/Sign_up.dart';
import 'package:heloo/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Page",
    home: Mylogin(),
    routes: {
      "login":(context)=>Mylogin(),
      "Sign_up":(context)=>Sign_up_page()
    },
  )
  );
}