import 'package:flutter/material.dart';

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
          TextField(
            controller: otpController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(hintText: "Enter the otp"),
          ),
        ],
      ),
    );
  }
}
