import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab2 extends StatefulWidget {
  const tab2({super.key});

  @override
  State<tab2> createState() => _tab2State();
}

class _tab2State extends State<tab2> {
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
                width: 150,
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
                          "ADD PURCHASE",
                          style: TextStyle(
                            fontSize: 12,
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
