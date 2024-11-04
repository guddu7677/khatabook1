import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab1 extends StatefulWidget {
  const tab1({super.key});

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
              Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(14)),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "Addbill");
                    },
                    child: Row(
                      children: [
                        Icon(Icons.add_chart_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ADD BILL",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        )
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
