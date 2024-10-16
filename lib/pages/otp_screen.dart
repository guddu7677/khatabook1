import 'package:flutter/material.dart';
import 'package:khata_books/pages/login_page.dart';

class otpscreen extends StatefulWidget {
  const otpscreen({super.key});

  @override
  State<otpscreen> createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/khatabook.png",
          fit: BoxFit.cover,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black38),
          ),
          SizedBox(
            height: 80,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                height: 50,
                width: double.infinity,
                child: TextField(
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter OTP",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 300),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "bottombar");
                      },
                      child: Text(
                        "Verify OTP",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "loginpage", (route) => false);
                      },
                      child: Text(
                        "Edit phone number ?",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
