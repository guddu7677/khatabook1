import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:khata_books/pages/models/product.dart';

import '../widgets/itemwidgets.dart';

class patriesPage extends StatefulWidget {
  const patriesPage({super.key});

  @override
  State<patriesPage> createState() => _patriesPageState();
}

class _patriesPageState extends State<patriesPage> {
  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final PayModeljson =
        await rootBundle.loadString("assets/files/PayModel.json");
    final decodedData = jsonDecode(PayModeljson);
    var productsData = decodedData["Products"];
    PayModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: TextButton(
        style: ButtonStyle(shadowColor: MaterialStatePropertyAll(Colors.white)),
        onPressed: () {
          Navigator.pushNamed(context, "addcustomer");
        },
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(18)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "ADD CUSTOMER",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Icon(
              Icons.book_online_outlined,
              color: Colors.white,
            ),
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
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "CUSTOMER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Text(
                          "SUPLIERS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person_add_alt_1_outlined,
                            color: Colors.white,
                          )),
                      Expanded(
                        child: Text(
                          "ADD STAFF",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            child: Column(
                              children: [
                                Text(
                                  "22",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "you will give",
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 8),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 80,
                            child: Column(
                              children: [
                                Text(
                                  "7777",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "you will give",
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 8),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 80,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "View",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 12),
                                    ),
                                    Text(
                                      "Report",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 12),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Icon(Icons.report)
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 5, top: 10),
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      suffixIcon: Icon(Icons.search_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    controller: searchController,
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
            ],
          ),
          Expanded(
            child: (PayModel.items != null && PayModel.items.isNotEmpty)
                ? ListView.builder(
                    itemCount: PayModel.items.length,
                    itemBuilder: (context, index) {
                      return Itemwidgets(
                        item: PayModel.items[index],
                      );
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
    );
  }
}
