import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab3 extends StatefulWidget {
  const tab3({super.key});

  @override
  State<tab3> createState() => _tab3State();
}

class _tab3State extends State<tab3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue)),
          ),
          Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(14)),
            child: TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Text(
                      "More",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "Payment & Return",
                      style: TextStyle(fontSize: 8),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
