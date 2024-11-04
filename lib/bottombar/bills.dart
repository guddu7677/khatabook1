import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khata_books/bottombar/bottombar.dart';
import 'package:khata_books/tabbar/tab_bar/tab_bar.dart';
import 'package:khata_books/tabbar/tab_bar/tab_bar2.dart';
import 'package:khata_books/tabbar/tab_bar/tab_bar3.dart';

class Billspage extends StatefulWidget {
  const Billspage({super.key});

  @override
  State<Billspage> createState() => _BillspageState();
}

class _BillspageState extends State<Billspage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
            children: [
              Icon(
                Icons.book_online_outlined,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Text(
                "guddug",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
          bottom: TabBar(
            controller: controller,
            tabs: [
              Tab(text: "Sale"),
              Tab(text: "Perchage"),
              Tab(text: "Expence"),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [tab1(), tab2(), tab3()],
      ),
    );
  }
}
