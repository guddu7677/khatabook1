import 'package:flutter/material.dart';

class mynumber extends StatefulWidget {
  const mynumber({super.key});

  @override
  State<mynumber> createState() => _mynumberState();
}

class _mynumberState extends State<mynumber> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: double.infinity,
          child: Row(
            children: [
              Icon(
                Icons.sim_card,
                size: 15,
              )
            ],
          ),
        )
      ],
    );
  }
}
