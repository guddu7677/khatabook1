import 'package:flutter/material.dart';

class AddDetail extends StatefulWidget {
  const AddDetail({super.key});

  @override
  State<AddDetail> createState() => _AddDetailState();
}

class _AddDetailState extends State<AddDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("data")],
      ),
    );
  }
}
