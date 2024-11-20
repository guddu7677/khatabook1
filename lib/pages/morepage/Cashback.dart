import 'package:flutter/material.dart';

class Cashbook extends StatefulWidget {
  const Cashbook({super.key});

  @override
  State<Cashbook> createState() => _CashbookState();
}

class _CashbookState extends State<Cashbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.white,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.output, color: Colors.white),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "OUT",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.input, color: Colors.white),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "IN",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "MorePage");
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.book_online,
                  color: Colors.blue,
                )),
            SizedBox(
              width: 15,
            ),
            Text(
              "Cashbook",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.question_mark_rounded,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 220,
            width: double.infinity,
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 160,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      size: 16,
                                    ),
                                    Text("0")
                                  ],
                                ),
                              ),
                              Text("Total Balance"),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Cash in Hand",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.currency_rupee,
                                                size: 12,
                                              ),
                                              Text(
                                                "0",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Cash in Hand",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.currency_rupee,
                                                size: 12,
                                              ),
                                              Text(
                                                "0",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 150,
                            width: 1,
                            color: Colors.grey.shade300,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      size: 16,
                                    ),
                                    Text("0")
                                  ],
                                ),
                              ),
                              Text("Total Balance"),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Cash in Hand",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.currency_rupee,
                                                size: 12,
                                              ),
                                              Text(
                                                "0",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Cash in Hand",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.currency_rupee,
                                                size: 12,
                                              ),
                                              Text(
                                                "0",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.report,
                          color: Colors.blue,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "VIEW CASHBOOK REPORT",
                          style: TextStyle(color: Colors.blue, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25), // Shadow color
                  offset: Offset(4, 4), // Shadow position
                  blurRadius: 10, // Spread radius
                  spreadRadius: 2, // How far the shadow spreads
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Date"),
                          SizedBox(
                            width: 160,
                          ),
                          Text(
                            "IN",
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        "OUT",
                        style: TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "0 Entry",
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 16,
                                color: Colors.red,
                              ),
                              Text(
                                "0",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.red),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.green,
                            size: 16,
                          ),
                          Text(
                            "0",
                            style: TextStyle(fontSize: 14, color: Colors.green),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
