import 'dart:math';

import 'package:flutter/material.dart';
import 'package:khata_books/bottombar/patries.dart';
import 'package:khata_books/pages/home_page.dart';
import 'package:khata_books/pages/login_page.dart';
import 'package:khata_books/pages/otp_screen.dart';
import 'package:khata_books/bottombar/bottombar.dart';

void main() {
  runApp(
    khatabook(),
  );
}

class khatabook extends StatelessWidget {
  const khatabook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "bottombar",
      routes: {
        "loginpage": (context) => loginpage(),
        "homepage": (context) => homepage(),
        "otpscreen": (context) => otpscreen(),
        "bottombar": (context) => bottombar(),
        "patriesPage": (context) => patriesPage(),
      },
      home: loginpage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
