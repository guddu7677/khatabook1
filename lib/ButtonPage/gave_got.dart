import 'package:flutter/material.dart';

class gavegot extends StatefulWidget {
  const gavegot({super.key});

  @override
  State<gavegot> createState() => _gavegotState();
}

class _gavegotState extends State<gavegot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "addparty");
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone,
                color: Colors.white,
              ))
        ],
        title: InkWell(
          overlayColor: MaterialStatePropertyAll(Colors.blue),
          onTap: () {},
          child: Row(
            children: [
              CircleAvatar(
                child: Text(
                  "T",
                  style: TextStyle(fontSize: Checkbox.width),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "Customer",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    "View setting",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(color: Colors.red),
              child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  Navigator.pushNamed(context, "yougave");
                },
                child: Text(
                  "YOU GAVE ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(color: Colors.green),
              child: TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    "YOU GOT ",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 420),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Start adding transaction with",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Icon(Icons.arrow_downward)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
