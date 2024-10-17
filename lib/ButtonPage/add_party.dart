import 'package:flutter/material.dart';

class AddParty extends StatefulWidget {
  @override
  State<AddParty> createState() => _AddPartyState();
}

class _AddPartyState extends State<AddParty> {
  bool isCircle1Filled = true;
  bool isCircle2Filled = false;
  String buttonText = "Add Customer";

  void _handleCircle1Tap() {
    setState(() {
      isCircle1Filled = true;
      isCircle2Filled = false;
      buttonText = "Add Customer";
    });
  }

  void _handleCircle2Tap() {
    setState(() {
      isCircle1Filled = false;
      isCircle2Filled = true;
      buttonText = "Add Supplier";
    });
  }

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        decoration:
            BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue),
            height: 50,
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () {
                Navigator.pushNamed(context, "gavegot");
              },
              child: Text(
                buttonText,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "addcustomer");
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        title: Text(
          "Add Party",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Party name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          "assets/images/india.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "+91",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 200,
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Who are they?",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),
              GestureDetector(
                onTap: _handleCircle1Tap,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCircle1Filled ? Colors.blue : Colors.transparent,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                ),
              ),
              Text(
                "Customer",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: _handleCircle2Tap,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCircle2Filled ? Colors.blue : Colors.transparent,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                ),
              ),
              Text(
                "Supplier",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
