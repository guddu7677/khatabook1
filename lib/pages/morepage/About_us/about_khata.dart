import 'package:flutter/material.dart';

class Aboutkhata extends StatefulWidget {
  const Aboutkhata({super.key});

  @override
  State<Aboutkhata> createState() => _AboutkhataState();
}

class _AboutkhataState extends State<Aboutkhata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          "About Khatabook",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Simplify business,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Empower merchant,",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
