import 'package:flutter/material.dart';

class nosbottomsheet extends StatefulWidget {
  const nosbottomsheet({super.key});

  @override
  State<nosbottomsheet> createState() => _nosbottomsheetState();
}

class _nosbottomsheetState extends State<nosbottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
    );
  }
}
