import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class yougave extends StatefulWidget {
  const yougave({super.key});

  @override
  State<yougave> createState() => _yougaveState();
}

class _yougaveState extends State<yougave> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "You gave 0 to",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "gavegot");
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.redAccent,
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 6,
                      offset: Offset(0, 0))
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.currency_rupee),
                  ),
                  Expanded(
                      child: TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Enter amount"),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
