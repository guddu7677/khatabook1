import 'dart:math';

import 'package:flutter/material.dart';
import 'package:khata_books/ButtonPage/add_customer.dart';
import 'package:khata_books/ButtonPage/gave_got.dart';
import 'package:khata_books/ButtonPage/add_party.dart';
import 'package:khata_books/ButtonPage/you_gave.dart';
import 'package:khata_books/ButtonPage/you_got.dart';
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
      initialRoute: "yougave",
      routes: {
        "loginpage": (context) => loginpage(),
        "homepage": (context) => homepage(),
        "otpscreen": (context) => otpscreen(),
        "bottombar": (context) => bottombar(),
        "patriesPage": (context) => patriesPage(),
        "addcustomer": (context) => addcustomer(),
        "addparty": (context) => AddParty(),
        "gavegot": (context) => gavegot(),
        "yougave": (context) => yougave(),
        // "NumericKeyboardExample": (context) => NumericKeyboardExample()
      },
      home: loginpage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
