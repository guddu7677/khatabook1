import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/khatabook.png",
          fit: BoxFit.cover,
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://media.istockphoto.com/id/1390983469/photo/portrait-shot-of-happy-medical-shop-owner-standing-with-crossed-arms-by-looking-at-camera-at.jpg?s=1024x1024&w=is&k=20&c=XmQokIsr6sODW5KUExlToH1mZIbzypIIIgEJO608Mlo=",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Apne business ko manage karein:",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                "Reminder bheje aur payment karein",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                "recieve karein",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                decoration: BoxDecoration(color: Colors.black26),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset(
                      "assets/images/secure.webp",
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Bharat bhar me 5 Crore+   business ka bharosha",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "loginpage");
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3, bottom: 2),
                      child: Column(
                        children: [
                          Text(
                            "KHATABOOK ISTEMAL KARNA SHURU",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "KAREIN",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(),
                    backgroundColor: Colors.blueAccent,
                    shadowColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
