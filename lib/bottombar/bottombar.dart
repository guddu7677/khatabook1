import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khata_books/bottombar/bills.dart';
import 'package:khata_books/bottombar/patries.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _CUSTOMERSState();
}

class _CUSTOMERSState extends State<bottombar> {
  int _selectedindex = 0;
  static final List<Widget> _screen = [
    patriesPage(),
    patriesPage(),
    Container(),
    Container(),
    Container(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavBarItem(CupertinoIcons.person_2_fill, "Parties", 1),
              buildNavBarItem(Icons.payment_outlined, "Bills", 2),
              buildNavBarItem(CupertinoIcons.chart_bar_fill, "Items", 3),
              buildNavBarItem(Icons.more_rounded, "More", 4)
            ],
          ),
        ),
        body: _screen[_selectedindex]);
  }

  Widget buildNavBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        children: [
          Icon(
            icon,
            color: _selectedindex == index ? Colors.blue : Colors.black,
          ),
          Text(
            label,
            style: TextStyle(
                color: _selectedindex == index ? Colors.blue : Colors.black),
          )
        ],
      ),
    );
  }
}
