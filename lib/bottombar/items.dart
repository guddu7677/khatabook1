import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khata_books/bottombar/bottombar.dart';
import 'package:khata_books/tabbar/itemtab/product.dart';
import 'package:khata_books/tabbar/itemtab/servies.dart';
import 'package:khata_books/tabbar/tab_bar/tab_bar.dart';
import 'package:khata_books/tabbar/tab_bar/tab_bar2.dart';
import 'package:khata_books/tabbar/tab_bar/tab_bar3.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  State<ItemsPage> createState() => _BillspageState();
}

class _BillspageState extends State<ItemsPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
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
        preferredSize: Size.fromHeight(100),
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
              Tab(text: "PRODUCTS"),
              Tab(text: "SERVIES"),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          productstab(),
          services(),
        ],
      ),
    );
  }
}
