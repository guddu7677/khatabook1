import 'dart:math';

import 'package:flutter/material.dart';
import 'package:khata_books/ButtonPage/add_customer.dart';
import 'package:khata_books/ButtonPage/gave_got.dart';
import 'package:khata_books/ButtonPage/add_party.dart';
import 'package:khata_books/ButtonPage/you_gave.dart';
import 'package:khata_books/ButtonPage/you_got.dart';
import 'package:khata_books/bottombar/bills.dart';
import 'package:khata_books/bottombar/items.dart';
import 'package:khata_books/bottombar/more.dart';
import 'package:khata_books/bottombar/patries.dart';
import 'package:khata_books/pages/home_page.dart';
import 'package:khata_books/pages/login_page.dart';
import 'package:khata_books/pages/morepage/book_page.dart';
import 'package:khata_books/pages/otp_screen.dart';
import 'package:khata_books/bottombar/bottombar.dart';
import 'package:khata_books/tabbar/itemtab/add_product.dart';
import 'package:khata_books/tabbar/tab_bar/add_bill.dart';

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
      initialRoute: "Book_Profile",
      routes: {
        "loginpage": (context) => loginpage(),
        "homepage": (context) => homepage(),
        "otpscreen": (context) => Otpscreen(),
        "bottombar": (context) => bottombar(),
        "patriesPage": (context) => patriesPage(),
        "addcustomer": (context) => addcustomer(),
        "addparty": (context) => AddParty(),
        "gavegot": (context) => gavegot(),
        "yougave": (context) => yougave(),
        "Billspage": (context) => Billspage(),
        "Addbill": (context) => Addbill(),
        "ItemsPage": (context) => ItemsPage(),
        "addproducts": (context) => addproducts(),
        "MorePage": (context) => MorePage(),
        "Book_Profile": (context) => Book_Profile()
      },
      home: loginpage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
