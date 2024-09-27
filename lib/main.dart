import 'package:flutter/material.dart';
import 'package:khata_books/pages/home_page.dart';
import 'package:khata_books/pages/login_page.dart';
import 'package:khata_books/pages/otp_screen.dart';

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
      initialRoute: "loginpage",
      routes: {
        "loginpage": (context) => loginpage(),
        "otpscreen": (context) => otpscreen(),
      },
      home: loginpage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
