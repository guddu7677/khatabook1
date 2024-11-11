import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khata_books/bottombar/bottom_sheet/nos.dart';

class addproducts extends StatefulWidget {
  const addproducts({super.key});

  @override
  State<addproducts> createState() => _addproducttsState();
}

class _addproducttsState extends State<addproducts> {
  bool sValue = false;
  bool tValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Add Item",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter items name here ",
                        border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter items name here ",
                        border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 4,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Primary Unit"),
                Row(
                  children: [
                    Text("Add Secondry unit?"),
                    SizedBox(
                      width: 10,
                    ),
                    Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.greenAccent,
                      inactiveThumbColor: Colors.grey,
                      value: sValue,
                      onChanged: (value) {
                        setState(() {
                          sValue = value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    )),
                    builder: ((context) {
                      return nosbottomsheet();
                    }));
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black38,
                    ),
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "NOS",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 4,
            width: double.infinity,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Sale Price"), Text("Purchase Price")],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter price",
                                  enabled: true,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter price",
                                  enabled: true,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  color: Colors.grey.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Tx Included"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.greenAccent,
                      inactiveThumbColor: Colors.grey,
                      value: tValue,
                      onChanged: (value) {
                        setState(() {
                          tValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 4,
            width: double.infinity,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Opening Stock"), Text("Low Stock Aleart")],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter count",
                                  enabled: true,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter count",
                                  enabled: true,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
