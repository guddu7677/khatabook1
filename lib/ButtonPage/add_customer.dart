import 'package:flutter/material.dart';

class addcustomer extends StatefulWidget {
  const addcustomer({super.key});

  @override
  State<addcustomer> createState() => _addcustomerState();
}

class _addcustomerState extends State<addcustomer> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "bottombar");
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                    hintText: "Customer name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
          ),
          TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, "addparty");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline_outlined,
                        size: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Add Customer',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined)
                ],
              ))
        ],
      ),
    );
  }
}
