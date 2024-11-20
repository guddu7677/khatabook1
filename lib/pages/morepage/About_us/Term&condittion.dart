import 'package:flutter/material.dart';

class Term_condition extends StatefulWidget {
  const Term_condition({super.key});

  @override
  State<Term_condition> createState() => _Term_conditionState();
}

class _Term_conditionState extends State<Term_condition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          "Term & Conditions",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
